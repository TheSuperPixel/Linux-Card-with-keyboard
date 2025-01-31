#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdarg.h>
#include <sys/ioctl.h>

static int pts_fd = -1;
void send_cmd(char cmd)
{
        if (ioctl(pts_fd , TIOCSTI, &cmd) < 0) {
                perror("ioctl");
                exit(1);
        }
}
const char *up_arrow = "\033[A";
const char *down_arrow = "\033[B";
const char *left_arrow = "\033[D";
const char *right_arrow = "\033[C";
void send_ansi_string(char* cmd){
    int fd;
    fd = open("/dev/tty1", O_WRONLY);
    if (fd == -1)
    {
        perror("fail open /dev/tty1");
        exit(EXIT_FAILURE);
    }

    for (size_t i = 0; i < strlen(cmd); i++)
    {
        if (ioctl(fd, TIOCSTI, &cmd[i]) == -1)
        {
            perror("ioctl TIOCSTI fail");
            close(fd);
            exit(EXIT_FAILURE);
        }
    }
    close(fd);
}
int send_ansi_char(char send_char){
    int fd;
    fd = open("/dev/tty1", O_WRONLY);
    if (fd == -1)
    {
        perror("/dev/tty1 fail ");
        exit(EXIT_FAILURE);
    }

    if (ioctl(fd, TIOCSTI, &send_char) == -1)
    {
        perror("ioctl TIOCSTI fial");
        close(fd);
        exit(EXIT_FAILURE);
    }
    close(fd);
}
int main(int argc, char *argv[])
{
    int fd;
    int val;

    int i, j;
    char c;

    /* open file*/
    fd = open("/dev/keyboard", O_RDWR);
    pts_fd = open("/dev/tty1", O_CREAT | O_RDWR, 666);

    if (fd == -1)
    {
        printf("can not open file %s\n", argv[1]);
        return -1;
    }

    while (1)
    {
        /* 3. read file */
        read(fd, &val, 4);
        printf("get button : 0x%x\n", val);
        switch (val)
        {
            case 1: // up
                send_ansi_string(up_arrow);
                break;
            case 2: // down
                send_ansi_string(down_arrow);
                break;
            case 3: // left
                send_ansi_string(left_arrow);
                break;
            case 4: // right
                send_ansi_string(right_arrow);
                break;
            case 5: // caps
                printf("caps is ok\n");
                break;
            case 6: // ctrl
                printf("ctrl is only suppot for stop\n");
                send_ansi_char(0x03);
                break;
            case 7: // alt
                printf("alt is not suppot\n");
                break;
            case 10: // shift
                printf("shift is not suppot\n");
                break;
            default:
                send_cmd(val);
                break;
        }
        
    }

    close(fd);



}

