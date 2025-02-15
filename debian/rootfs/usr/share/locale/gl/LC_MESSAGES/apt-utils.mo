��    1      �  C   ,      8  )   9     c  "        �     �     �     �          %  1   C     u  ,   �  m   �  #     (   C     l     p     �     �  %   �  '   �          !  #   3  "   W     z     �     �     �     �  #   �       "   (  5   K  !   �     �     �     �     �     �  "   	     7	  &  O	     v     z     �  !   �  #   �  �  �  ;   �  *     ;   @  !   |     �  )   �  $   �  $   �  (   #  E   L     �  :   �  �   �  -   e  D   �     �  #   �  +      .   ,  ?   [  0   �  %   �     �  2     &   ?  "   f  *   �     �  '   �  1   �  5   -      c  4   �  9   �  2   �     &     E     e  8   �     �  ,   �  !   	  �  +     (   '   ,      T   %   r   +   �      +                              *   %              "         0      .                              	      (                &       '                 ,       )       /         -          $       #                        !   
         1      %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB format is invalid. If you upgraded from an older version of apt, please remove and re-create the database. DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s IO to subprocess/file failed Internal error, failed to create %s No selections matched Package extension list is too long Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-ftparchive [options] command
Commands: packages binarypath [overridefile [pathprefix]]
          sources srcpath [overridefile [pathprefix]]
          contents path
          release path
          generate config [groups]
          clean config

apt-ftparchive generates index files for Debian archives. It supports
many styles of generation from fully automated to functional replacements
for dpkg-scanpackages and dpkg-scansources

apt-ftparchive generates Package files from a tree of .debs. The
Package file contains the contents of all the control fields from
each package as well as the MD5 hash and filesize. An override file
is supported to force the value of Priority and Section.

Similarly apt-ftparchive generates Sources files from a tree of .dscs.
The --source-override option can be used to specify a src override file

The 'packages' and 'sources' command should be run in the root of the
tree. BinaryPath should point to the base of the recursive search and 
override file should contain the override flags. Pathprefix is
appended to the filename fields if present. Example usage from the 
Debian archive:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Options:
  -h    This help text
  --md5 Control MD5 generation
  -s=?  Source override file
  -q    Quiet
  -d=?  Select the optional caching database
  --no-delink Enable delinking debug mode
  --contents  Control contents file generation
  -c=?  Read this configuration file
  -o=?  Set an arbitrary configuration option W:  W: Unable to read directory %s
 W: Unable to stat %s
 Waited for %s but it wasn't there realloc - Failed to allocate memory Project-Id-Version: apt 1.0.5
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2020-05-12 19:45+0000
PO-Revision-Date: 2011-05-12 15:28+0100
Last-Translator: Miguel Anxo Bouzada <mbouzada@gmail.com>
Language-Team: galician <proxecto@trasno.net>
Language: gl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=n != 1;
X-Poedit-Language: Galician
   %s tampouco ten unha entrada de «override» de binarios
   %s non ten unha entrada de «override»
   %s non ten unha entrada de «override» de código fonte
   O mantedor de %s é %s, non %s
  DesLig %s [%s]
  Acadouse o límite de desligado de %sB.
 *** Non foi posíbel ligar %s con %s O arquivo non tiña un campo Package O arquivo non ten un rexistro de control Non é posíbel obter a versión de debconf. Debconf está instalado? Fillo de compresión A saída comprimida %s precisa dun conxunto de compresión O formato da base de datos non é correcto. Se a anovou desde unha versión antiga de apt, retirea e volva a crear a base de datos A base de datos é antiga, tentando anovar %s A base de datos estaba danada, cambiouse o nome do ficheiro a %s.old E:  E: os erros aplícanse ao ficheiro  Produciuse un erro ao procesar o contido %s Produciuse un erro ao procesar o directorio %s Produciuse un erro ao gravar a cabeceira no ficheiro de contido Non foi posíbel crear a canle IPC ao subproceso Non foi posíbel facer a bifurcación Non foi posíbel abrir %s Non foi posíbel ler o ficheiro de «override» %s Non foi posíbel ler ao calcular o MD5 Non foi posíbel ler a ligazón %s Non foi posíbel cambiar o nome de %s a %s Non foi posíbel solucionar %s Non foi posíbel determinar o estado %s Produciuse un fallo na E/S do subproceso/ficheiro Produciuse un erro interno, non foi posíbel crear %s Non coincide ningunha selección A lista de extensións de paquetes é longa de máis Faltan ficheiros no grupo de ficheiros de paquetes «%s» A lista de extensións de fontes é longa de máis Fallou o percorrido da árbore Non é posíbel obter un cursor Non é posíbel puido abrir %s Non é posíbel abrir o ficheiro de base de datos %s: %s Non é posíbel escribir en %s Algoritmo de compresión «%s» descoñecido Rexistro de paquete descoñecido! Emprego: apt-ftparchive [opcións] orde
Ordes: packages rutabinaria [fichoverride [prefixoruta]]
       sources rutafontes [fichoverride [prefixoruta]]
       contents ruta
       release ruta
       generate config [grupos]
       clean config

apt-ftparchive xera ficheiros de índices para arquivos de Debian. Admite
varios estilos de xeración, de totalmente automática a substitutos funcionais
de dpkg-scanpackages e dpkg-scansources

apt-ftparchive xera ficheiros Packages dunha árbore de .debs. O ficheiro
Packages ten o contido de todos os campos de control de cada paquete, así
coma a suma MD5 e o tamaño do ficheiro. Admitese un ficheiro de «overrides»
para forzar o valor dos campos Priority e Section.

De xeito semellante, apt-ftparchive xera ficheiros Sources dunha árbore de
.dscs. Pódese empregar a opción --source-override para especificar un ficheiro
de «overrides» para fontes.

As ordes «packages» e «sources» deberían executarse na raíz da árbore.
«Rutabinaria» debería apuntar á base da busca recursiva e o ficheiro
«fichoverride» debería conter os modificadores de «override». «Prefixoruta»
engádese aos campos de nomes de ficheiros se está presente. Un exemplo
de emprego do arquivo de Debian:
   apt-ftparchive packages dists/potato/main/binary-i386/ > 
               dists/potato/main/binary-i386/Packages

Opcións:
  -h    Este texto de axuda
  --md5 Controla a xeración de MD5
  -s=?  Ficheiro de «override» de fontes
  -q    Non produce ningunha saída por pantalla
  -d=?  Escolle a base de datos de caché opcional
  --no-delink Activa o modo de depuración de desligado
  --contents  Controla a xeración do ficheiro de contido
  -c=?  Le este ficheiro de configuración
  -o=?  Estabelece unha opción de configuración A:  A: non é posíbel ler o directorio %s
 A: non é posíbel atopar %s
 Agardouse por %s pero non estaba alí realloc - Non foi posíbel reservar memoria 