��    �      L  �   |
      �  �  �  h   �  �   
  i  �  b  e  �   �     b     q  %   �  5   �     �     �     �       "        1     A     Z     s     �      �     �     �  	   �       6     '   N  '   v  "   �  4   �  *   �  .   !     P  
   \     g     u     �     �     �     �     �     �                5     K     `     u     �     �     �     �     �     �     
               =     Q     n     �     �  %   �  &   �  #     #   5  #   Y  !   }  (   �  <   �  %        +      I     j  #   �     �     �  #   �  %   	  ?   /  	   o     y  %   �     �  
   �     �     �     �               ,     :     J     [     q     �     �     �  4   �     �                 '      F      U      h      }      �      �      �      �      �      �   '   �      !  &   &!  	   M!     W!     e!     s!     v!     !     �!     �!     �!  L   �!  ;   "     H"  "   g"     �"     �"     �"     �"     �"     �"  	   �"     �"  *   �"  $   #  +   0#  #   \#  7   �#  %   �#  "   �#  4   $  (   6$  (   _$     �$     �$     �$     �$     �$     �$     �$     �$     %  
    %  &   +%  '   R%  ,   z%     �%     �%     �%     �%      �%  �  &  Q  (  �   S,  �  �,  )  �.  �  �0    �4     �5  '   �5  N   6  a   l6  $   �6     �6      7     7  N   ,7  %   {7  V   �7  ?   �7  6   88  2   o8  K   �8  2   �8  %   !9     G9  *   [9  \   �9  l   �9  U   P:  K   �:  h   �:  4   [;  >   �;     �;     �;     �;  =   <  ,   P<  &   }<  4   �<  *   �<  !   =  !   &=      H=  !   i=  "   �=  !   �=  !   �=  "   �=  "   >  !   8>  J   Z>  ;   �>     �>  K   �>  
   C?     N?  +   g?      �?  8   �?  7   �?  7   %@  D   ]@  U   �@  N   �@  T   GA  P   �A  S   �A  D   AB  _   �B  o   �B  `   VC  @   �C  N   �C  L   GD  H   �D  K   �D  2   )E  D   \E  S   �E  m   �E     cF  )   F  M   �F     �F     G  "   G  +   <G  6   hG  )   �G  (   �G  (   �G  !   H  %   =H  )   cH  ,   �H  !   �H  0   �H  4   I  \   BI     �I     �I  4   �I  6   J     KJ  *   kJ  ,   �J  2   �J  ,   �J     #K  $   0K  
   UK  (   `K  
   �K  D   �K  *   �K  P   L     UL     kL     �L     �L  2   �L  (   �L     	M     M  1   4M  u   fM  Y   �M  :   6N  A   qN     �N     �N     �N     �N  
   O  !    O  "   BO     eO  >   vO  ;   �O  W   �O  &   IP  b   pP  5   �P  D   	Q  N   NQ  (   �Q  (   �Q     �Q  +   R  $   :R  !   _R     �R     �R  
   �R     �R  4   �R     S  L   *S  M   wS  R   �S     T  :   %T     `T  A   fT  F   �T     J   �   3   �   .   r                                  y      �       �   �   [   S   �       c   ,   @   �   l   )   �   �   O       H      �       �   �       �          �   q           o         2   �           *   /       '       �      �   �             $   Y   b   C   �   �       K   7   d      {   ~   X   z           �   �   >   V       h   k          5           `       �          <   R   �   0       6       \       j      �       (       �   �   
   s   B      }       %       �   !       :   �   w   f             &   |      L       Z   ^   ?   T   U   e       8      P   1   M   v   u       i   �   G   n            �       �   x           9   =   ]          _   �      F           -       W   �          p   	          #   4      D       +       �          t   �   �   Q          N      �   "   E   m   �           ;   I           A   a   g        -h --help            Show this help
    -V --version         Show version
    -D --browse-domains  Browse for browsing domains instead of services
    -a --all             Show all services, regardless of the type
    -d --domain=DOMAIN   The domain to browse in
    -v --verbose         Enable verbose mode
    -t --terminate       Terminate after dumping a more or less complete list
    -c --cache           Terminate after dumping all entries from the cache
    -l --ignore-local    Ignore local services
    -r --resolve         Resolve services found
    -f --no-fail         Don't fail if the daemon is not available
    -p --parsable        Output in parsable format
     -k --no-db-lookup    Don't lookup service types
    -b --dump-db         Dump service type database
 %s [options]

    -h --help            Show this help
    -s --ssh             Browse SSH servers
    -v --vnc             Browse VNC servers
    -S --shell           Browse both SSH and VNC
    -d --domain=DOMAIN   The domain to browse in
 %s [options] %s <host name ...>
%s [options] %s <address ... >

    -h --help            Show this help
    -V --version         Show version
    -n --name            Resolve host name
    -a --address         Resolve address
    -v --verbose         Enable verbose mode
    -6                   Lookup IPv6 address
    -4                   Lookup IPv4 address
 %s [options] %s <name> <type> <port> [<txt ...>]
%s [options] %s <host-name> <address>

    -h --help            Show this help
    -V --version         Show version
    -s --service         Publish service
    -a --address         Publish address
    -v --verbose         Enable verbose mode
    -d --domain=DOMAIN   Domain to publish service in
    -H --host=DOMAIN     Host where service resides
       --subtype=SUBTYPE An additional subtype to register this service with
    -R --no-reverse      Do not publish reverse entry with address
    -f --no-fail         Don't fail if the daemon is not available
 %s [options] <new host name>

    -h --help            Show this help
    -V --version         Show version
    -v --verbose         Enable verbose mode
 : All for now
 : Cache exhausted
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family Address: An unexpected D-Bus error occurred Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain Domain Name: E Ifce Prot %-*s %-20s Domain
 E Ifce Prot Domain
 Established under name '%s'
 Failed to add address: %s
 Failed to add service: %s
 Failed to add subtype '%s': %s
 Failed to connect to Avahi server: %s Failed to create address resolver: %s
 Failed to create browser for %s: %s Failed to create client object: %s
 Failed to create domain browser: %s Failed to create entry group: %s
 Failed to create host name resolver: %s
 Failed to create resolver for %s of type %s in domain %s: %s Failed to create simple poll object.
 Failed to parse address '%s'
 Failed to parse port number: %s
 Failed to query host name: %s
 Failed to query version string: %s
 Failed to read Avahi domain: %s Failed to register: %s
 Failed to resolve address '%s': %s
 Failed to resolve host name '%s': %s
 Failed to resolve service '%s' of type '%s' in domain '%s': %s
 Host Name Host name conflict
 Host name successfully changed to %s
 Initializing... Interface: Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resolve Service Resolve Service Host Name Resolve the host name of the selected service automatically before returning Resolve the selected service automatically before returning Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Name: Service Type Service Type: TXT TXT Data TXT Data: Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 empty execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: Avahi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-10-10 13:24+0200
PO-Revision-Date: 2013-11-20 09:58+0000
Last-Translator: Мирослав Николић <miroslavnikolic@rocketmail.com>
Language-Team: Serbian (http://www.transifex.com/lennart/avahi/language/sr/)
Language: sr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
     -h --help             Приказује ову помоћ
    -V --version          Приказује издање
    -D --browse-domains   Разгледа домене који се могу претраживати уместо услуга
    -a --all              Приказује све услуге, без обзира на врсту
    -d --domain=ДОМЕН     Домен за претраживање
    -v --verbose          Укључује режим опширног исписа
    -t --terminate        Прекида после избацивања више или мање завршене листе
    -c --cache            Прекида после избацивања свих записа из оставе
    -l --ignore-local     Занемарује месне услуге
    -r --resolve          Решава пронађене услуге
    -f --no-fail          Не отказује ако системска услуга није доступна
    -p --parsable         Даје излаз у запису који се може обрадити
     -k --no-db-lookup     Не тражи врсте услуге
    -b --dump-db          Избацује базу података врсте услуге
 %s [могућности]

    -h --help             Приказује ову помоћ
    -s --ssh              Разгледа сервере безбедне шкољке
    -v --vnc              Разгледа ВНЦ сервере
    -S --shell            Разгледа сервере и безбедне шкољке и ВНЦ-а
    -d --domain=ДОМЕН     Домен у коме ће се вршити разгледање
 %s [могућности] %s <назив домаћина ...>
%s [могућности] %s <адреса ... >

    -h --help             Приказује ову помоћ
    -V --version          Приказује издање
    -n --name             Решава назив домаћина
    -a --address          Решава адресу
    -v --verbose          Укључује режим опширног исписа
    -6                    Тражи ИПв6 адресу
    -4                    Тражи ИПв4 адресу
 %s [могућности] %s <назив> <врста> <порт> [<txt ...>]
%s [могућности] %s <назив-домаћина> <адреса>

    -h --help             Приказује ову помоћ
    -V --version          Приказује издање
    -s --service          Објављује услугу
    -a --address          Објављује адресу
    -v --verbose          Укључује режим опширног исписа
    -d --domain=ДОМЕН     Домен у којем ће се објавити услуге
    -H --host=ДОМЕН       Домаћин на којем се налазе услуге
       --subtype=ПОДВРСТА Додатна подврста са којом ће се забележити ова услуга
    -R --no-reverse       Не објављује обрнуте уносе са адресом
    -f --no-fail          Неће отказати ако системска услуга није доступна
 %s [могућности] <нови назив домаћина>

    -h --help             Приказује ову помоћ
    -V --version          Приказује издање
    -v --verbose          Укључује режим опширног исписа
 : За сада све
 : Остава је препуњена
 <i>Ниједна услуга тренутно није изабрана.</i> Списак врста услуга за прегледање ограничен са „NULL“ Приступ је забрањен Адреса Породица адреса Адреса: Дошло је до неочекиване грешке Д-сабирнице Авахијево откривање Прегледник Авахијевог сервера безбедне шкољке Прегледник Авахијевог ВНЦ сервера Авахијев Зероконф прегледник Квар Авахијевог клијента: %s Неуспех Авахијевог прегледника домена: %s Квар Авахијевог решавача: %s Лош број аргумената
 Лоше стање Прегледај врсте услуга Прегледам доступне Зероконф услуге на вашој мрежи Потражите сервере безбедне шкољке са укљученим Зероконфом Потражите ВНЦ сервере са укљученим Зероконфом Списак врста услуга за преглед је празан! Нисам успео да потражим врсту услуге „%s“ у домену „%s“
%s Тражим услугу у домену <b>%s</b>: Тражим услугу на <b>месној мрежи</b>: Разгледам... Отказано.
 Промени домен Изаберите сервер безбедне шкољке Изаберите сервер шкољке Изаберите ВНЦ сервер Неуспех клијента, излазим: %s
 Повезујем се на „%s“ ...
 Неуспех ДНС-а: FORMERR Неуспех ДНС-а: NOTAUTH Неуспех ДНС-а: NOTIMP Неуспех ДНС-а: NOTZONE Неуспех ДНС-а: NXDOMAIN Неуспех ДНС-а: NXRRSET Неуспех ДНС-а: REFUSED Неуспех ДНС-а: SERVFAIL Неуспех ДНС-а: YXDOMAIN Неуспех ДНС-а: YXRRSET Није успело повезивање системске услуге Системска услуга није покренута Радна површ Веза је прекинута, поново се повезујем ...
 Домен Назив домена: Д МСуч Прот %-*s %-20s Домен
 Д МСуч Прот Домен
 Успостављено под називом „%s“
 Нисам успео да додам адресу: %s
 Нисам успео да додам услугу: %s
 Нисам успео да додам подврсту „%s“: %s
 Нисам успео да се повежем на Авахијев сервер: %s Нисам успео да направим решавача адресе: %s
 Нисам успео да направим прегледника за „%s“: %s Нисам успео да направим објекат клијента: %s
 Нисам успео да направим прегледника домена: %s Нисам успео да направим унос групе: %s
 Нисам успео да направим решавача назива домаћина: %s
 Нисам успео да направим решавача за „%s“ врсте %s у домену %s: %s Нисам успео да направим објекат једноставне анкете.
 Нисам успео да обрадим адресу „%s“
 Нисам успео да обрадим број прикључника: %s
 Нисам успео да пропитам назив домаћина: %s
 Нисам успео да пропитам ниску издања: %s
 Нисам успео да прочитам Авахијев домен: %s Нисам успео да забележим: %s
 Нисам успео да обрадим адресу „%s“: %s
 Нисам успео да обрадим назив домаћина „%s“: %s
 Нисам успео да решим услугу „%s“ врсте „%s“ у домену „%s“: %s
 Назив домаћина Сукоб назива домаћина
 Назив домаћина је успешно промењен у „%s“
 Покрећем... Уређај: Неисправан ДНС ТТЛ Неисправан разред ДНС-а Неисправан повратни код ДНС-а Неисправна врста ДНС-а Неисправан код грешке Неисправни су РПОДАЦИ Неисправна адреса Неисправан аргумент Неисправно подешавање Неисправан назив домена Неисправне опције Неисправан назив домаћина Неисправан регистар уређаја Неисправан број аргумената, очекујем тачно један.
 Неисправна радња Неисправан пакет Неисправан број прикључника Неисправна одредба протокола Неисправан запис Неисправан кључ записа Неисправан назив услуге Неисправна подврста услуге Неисправна врста услуге Празно Сукоб месних назива Место Меморија је истрошена Назив Сукоб назива, узимам нови назив „%s“.
 Наредба није наведена.
 Одговарајући мрежни протокол није доступан Нисам нашао Није дозвољено Није подржано У реду Грешка оперативног система Операција није успела Прикључник Реши услугу Реши назив домаћина услуге Самостално решава назив домаћина изабране услуге пре повраћаја Самостално решава изабрану услугу пре повраћаја Кључ записа изворишта је шаблон Издање сервера: %s; назив домаћина: %s
 Назив услуге Назив услуге: Врста услуге Врста услуге: ТЕКСТ Текстуални подаци Текстуални подаци: Терминал Број ИП прикључника решене услуге Текстуални подаци решене услуге Породица адреса за разрешавање назива домаћина Адреса решене услуге Домен за прегледање, или „NULL“ за подразумевани домен Назив домаћина решене услуге Прослеђени објекат није био исправан Тражена радња је неисправна јер је сувишна Назив изабране услуге Врста изабране услуге Време је истекло Сувише мало аргумената
 Превише аргумената
 Превише клијената Превише уноса Превише објеката Врста Неслагање издања Чекам на системску услугу ...
 _Домен... Није успела функција „avahi_domain_browser_new()“: %s
 Није успела функција „avahi_service_browser_new()“: %s
 Није успела функција „avahi_service_type_browser_new()“: %s
 празно Није успела функција „execlp()“: %s
 н/д Није успела функција „service_browser“: %s
 Није успела функција „service_type_browser“: %s
 