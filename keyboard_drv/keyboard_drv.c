#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/ide.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/device.h>
#include <linux/of.h>
#include <linux/gpio.h>
#include <linux/of_gpio.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/jiffies.h>
#include <linux/timer.h>
#include <linux/workqueue.h>
#include <linux/delay.h>

#define MINOR 10              // 次设备号
#define KEYBOARD_SCAN_TIME 50 // 定时器中断触发时间 (ms)
#define DEVICE_NAME "keybard" // 设备名称
#define DTB_COMPATIBLE_KEY "my,keybard"

static int major = 0; // 确定主设备号
static struct class *keyboard_class;

// 工作队列
static struct workqueue_struct *keyboard_wq;
struct my_keyboard_work
{
    struct work_struct work;
};
static DECLARE_WAIT_QUEUE_HEAD(gpio_key_wait);

// 键盘引脚
typedef struct
{
    struct device_node *nd;
    int keybard_load;
    int keybard_clk;
    int keybard_clken_n;
    int keybard_in;
    struct timer_list timer;
} gpio_dev_t;
static gpio_dev_t keybard_dev;

// 键盘键值记录
char keyboard_char;
char keyboard_char_old;
int keyboard_index = 73;
int capital_lock = 0;
int keyboard_changed = 0;

/* 定义自己的file_operations结构体                                             */
/* 实现对应的open/read/write等函数，填入file_operations结构体                  */
static ssize_t keyboard_drv_read(struct file *file, char __user *buf, size_t size, loff_t *offset)
{
    printk("%s %s line %d\n", __FILE__, __FUNCTION__, __LINE__);
    int err;

    // 等待键盘工作队列中的wakeup函数唤醒
    wait_event_interruptible(gpio_key_wait, keyboard_changed);
    err = copy_to_user(buf, &keyboard_char, 1);
    keyboard_changed = 0;
    return 0;
}
static ssize_t keyboard_drv_write(struct file *file, const char __user *buf, size_t size, loff_t *offset)
{
    printk("%s %s line %d\n", __FILE__, __FUNCTION__, __LINE__);
    return 0;
}
static int keyboard_drv_open(struct inode *node, struct file *file)
{

    printk("%s %s line %d\n", __FILE__, __FUNCTION__, __LINE__);

    return 0;
}
static int keyboard_drv_close(struct inode *node, struct file *file)
{
    printk("%s %s line %d\n", __FILE__, __FUNCTION__, __LINE__);
    return 0;
}
static struct file_operations led_drv = {
    .owner = THIS_MODULE,
    .open = keyboard_drv_open,
    .read = keyboard_drv_read,
    .write = keyboard_drv_write,
    .release = keyboard_drv_close,
};

/* 平台驱动前置声明 */
static int keybard_probe(struct platform_device *dev);
static int keybard_remove(struct platform_device *dev);
static void keybard_blink(struct timer_list *unused);

static const struct of_device_id keybard_table[] = {
    {.compatible = DTB_COMPATIBLE_KEY},
    {/* sentinel */}};
MODULE_DEVICE_TABLE(of, keybard_table); // 建议加上

static struct platform_driver platform_keybard = {
    .driver = {
        .name = DEVICE_NAME,
        .of_match_table = keybard_table,
    },
    .probe = keybard_probe,
    .remove = keybard_remove,
};
// 键盘数据缓存
int keyboard_data[72]; // 键盘键值，对应是0则被按下
char buffer[512];      // 用来存储数组的打印内容
char keyboard_chars[] = {
    '\t', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '{', '}', '|',
    '~', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '_', '+', '=', '\b',
    '\5', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', ':', '\r', '!', '*', '\6',
    '\10', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '<', '>', '/', '?', ' ', '\3',
    '\'', '\e', '\\', '\177', '\1', '\7', '\2', '\4'};

static void keyboard_work_func(struct work_struct *work)
{
    struct my_keyboard_work *my_keyboard_work = container_of(work, struct my_keyboard_work, work);
    int val, i;

    // 给74hc165加load时序
    gpio_set_value(keybard_dev.keybard_load, 0);
    udelay(100);
    gpio_set_value(keybard_dev.keybard_load, 1);

    keyboard_char = '\0';
    for (i = 0; i < 72; i++)
    {
        keyboard_data[i] = gpio_get_value(keybard_dev.keybard_in); // 读取引脚
        if (keyboard_data[i] == 0)
        {

            if ((i == 32) && (keyboard_index != i))
            {
                capital_lock = ~capital_lock; // 大小写锁定按键
            }
            else
            {
                if (capital_lock)
                {
                    keyboard_char = keyboard_chars[i] - 32; // 小写转大写
                }
                else
                {
                    keyboard_char = keyboard_chars[i];
                }
            }
            keyboard_index = i;
        }
        else
        {
            keyboard_index = 73;
        }

        // 给74hc165加clk,准备读取下一个数据
        gpio_set_value(keybard_dev.keybard_clk, 0);
        udelay(100);
        gpio_set_value(keybard_dev.keybard_clk, 1);
        udelay(100);
    }

    // 构建数组内容的打印字符串
    int len = 0;
    len += snprintf(buffer + len, sizeof(buffer) - len, "keyboard_data= ");
    for (i = 0; i < 72; i++)
    {
        len += snprintf(buffer + len, sizeof(buffer) - len, "%d", keyboard_data[i]);
        if (len >= sizeof(buffer) - 10)
        { // 预防缓冲区溢出
            break;
        }
    }
    len += snprintf(buffer + len, sizeof(buffer) - len, ",key=%c %d", keyboard_char, keyboard_char);

    // struct file *file;
    // mm_segment_t old_fs;

    if ((keyboard_char != 0) && (keyboard_char != keyboard_char_old))
    {
        printk(KERN_INFO "%s\n", buffer); // 打印数组内容

        // 通过write向tty1写入数据，但是会出现无法运行命令的现象，已经弃用
        // char keyboard_send[2]; // 用于存放字符串，长度要包含 '\0'
        // snprintf(keyboard_send, sizeof(keyboard_send), "%c", keyboard_char);
        // file = filp_open("/dev/tty1", O_WRONLY, 0);
        // if (IS_ERR(file)) {
        //     printk(KERN_ERR "Failed to open /dev/tty1\n");
        //     return PTR_ERR(file);
        // }
        // old_fs = get_fs();
        // set_fs(KERNEL_DS);
        // kernel_write(file, keyboard_send, sizeof(keyboard_send) - 1, &file->f_pos);
        // set_fs(old_fs);
        // filp_close(file, NULL);

        // 唤醒发送键值的线程
        keyboard_changed = 1;
        wake_up_interruptible(&gpio_key_wait);
    }
    keyboard_char_old = keyboard_char;
    kfree(my_keyboard_work); /* 释放工作结构 */
}

/* probe函数 */
static int keybard_probe(struct platform_device *pdev)
{
    int ret;

    printk("keybard probe\n");

    /* (a) 获取设备树节点 */
    keybard_dev.nd = pdev->dev.of_node;

    if (!keybard_dev.nd)
    {
        dev_err(&pdev->dev, "No device node!\n");
        return -EINVAL;
    }
    /* (b) 分别获取两个 GPIO 编号 */
    keybard_dev.keybard_load = of_get_named_gpio(keybard_dev.nd, "keybard-load", 0);
    if (keybard_dev.keybard_load < 0)
    {
        dev_err(&pdev->dev, "Faikeybard to get keybard-load\n");
        return keybard_dev.keybard_load;
    }
    printk("keybard_load done!");

    keybard_dev.keybard_clk = of_get_named_gpio(keybard_dev.nd, "keybard-clk", 0);
    if (keybard_dev.keybard_clk < 0)
    {
        dev_err(&pdev->dev, "Faikeybard to get keybard-clk\n");
        return keybard_dev.keybard_clk;
    }
    printk("keybard_clk done!");

    keybard_dev.keybard_clken_n = of_get_named_gpio(keybard_dev.nd, "keybard-clken_n", 0);
    if (keybard_dev.keybard_clken_n < 0)
    {
        dev_err(&pdev->dev, "Faikeybard to get keybard-clken_n\n");
        return keybard_dev.keybard_clken_n;
    }
    printk("keybard-clken_n done!");

    keybard_dev.keybard_in = of_get_named_gpio(keybard_dev.nd, "keybard-in", 0);
    if (keybard_dev.keybard_in < 0)
    {
        dev_err(&pdev->dev, "Faikeybard to get keybard-in\n");
        return keybard_dev.keybard_in;
    }
    printk("keybard_in done!");

    // 设置引脚电平初值，全部设置为低电平
    gpio_set_value(keybard_dev.keybard_clk, 0);
    gpio_set_value(keybard_dev.keybard_clken_n, 0);
    gpio_set_value(keybard_dev.keybard_load, 0);

    /* (c) 分别请求并配置为输出 但是已经在pinctl设备树配置了，因此不用运行*/
    // ret = gpio_request(keybard_dev.keybard_load, "keybard-pin1");
    // if (ret)
    // {
    //     dev_err(&pdev->dev, "gpio_request keybard-pin1 faikeybard: %d\n", ret);
    //     return ret;
    // }
    // gpio_direction_output(keybard_dev.keybard_load, 1); // 初始拉高/灭灯

    // ret = gpio_request(keybard_dev.keybard_clk, "keybard-pin2");
    // if (ret)
    // {
    //     dev_err(&pdev->dev, "gpio_request keybard-pin2 faikeybard: %d\n", ret);
    //     gpio_free(keybard_dev.keybard_load); // 记得释放前一个 GPIO
    //     return ret;
    // }
    // gpio_direction_output(keybard_dev.keybard_clk, 1);

    /* 初始化工作队列 */
    keyboard_wq = create_workqueue("keyboard_wq");
    if (!keyboard_wq)
    {
        dev_err(&pdev->dev, "Failed to create keyboard workqueue\n");
        /* 清理 GPIO 资源 */
        return -ENOMEM;
    }

    /* (d) 初始化并启动定时器 */
    timer_setup(&keybard_dev.timer, keybard_blink, 0);
    keybard_dev.timer.expires = jiffies + msecs_to_jiffies(KEYBOARD_SCAN_TIME);
    add_timer(&keybard_dev.timer);

    /*  注册file_operations 	*/
    major = register_chrdev(0, "keyboard", &led_drv); /* /dev/led */

    keyboard_class = class_create(THIS_MODULE, "keyboard_class");
    if (IS_ERR(keyboard_class))
    {
        printk("%s %s line %d\n", __FILE__, __FUNCTION__, __LINE__);
        unregister_chrdev(major, "led");
        return PTR_ERR(keyboard_class);
    }

    device_create(keyboard_class, NULL, MKDEV(major, 0), NULL, "keyboard");

    return 0;
}

/* 4) remove函数 */
static int keybard_remove(struct platform_device *pdev)
{
    printk("keybard remove\n");
    del_timer_sync(&keybard_dev.timer);

    /* 关灯 */
    gpio_set_value(keybard_dev.keybard_load, 0);
    gpio_set_value(keybard_dev.keybard_clk, 0);
    gpio_set_value(keybard_dev.keybard_clken_n, 0);

    /* 释放 GPIO */
    gpio_free(keybard_dev.keybard_load);
    gpio_free(keybard_dev.keybard_clk);
    gpio_free(keybard_dev.keybard_clken_n);
    gpio_free(keybard_dev.keybard_in);

    /* 销毁工作队列 */
    destroy_workqueue(keyboard_wq);

    device_destroy(keyboard_class, MKDEV(major, 0));
    class_destroy(keyboard_class);
    unregister_chrdev(major, "keyboard");

    return 0;
}

/*  定时器回调：这里演示驱动键盘*/
static void keybard_blink(struct timer_list *unused)
{

    /* 创建并调度工作 */
    struct my_keyboard_work *keyboard_work = kmalloc(sizeof(struct my_keyboard_work), GFP_KERNEL);
    if (!keyboard_work)
        return;

    INIT_WORK(&keyboard_work->work, keyboard_work_func);
    queue_work(keyboard_wq, &keyboard_work->work);

    keybard_dev.timer.expires = jiffies + msecs_to_jiffies(KEYBOARD_SCAN_TIME);
    add_timer(&keybard_dev.timer);
}

/*  模块初始化与退出 */
static int __init keybard_init(void)
{
    printk("keyboard module init\n");

    return platform_driver_register(&platform_keybard);
}

static void __exit keybard_exit(void)
{
    printk("keyboard module exit\n");
    platform_driver_unregister(&platform_keybard);
}

module_init(keybard_init);
module_exit(keybard_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("wmp");
