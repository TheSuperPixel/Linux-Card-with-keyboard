��    <      �  S   �      (  )   )     S  "   o     �     �     �     �     �       1   3     e  ,   t  m   �  #     (   3     \     `     y     �  %   �  '   �               #  #   7  "   [     ~     �     �     �     �  #   �  "   	  "   9	  "   \	  $   	     �	  "   �	  5   �	  !   
     5
     I
     `
     u
     �
     �
  "   �
     �
  �   �
  �   �  &  p  �   �  �   O  �   �     �     �       !   %  #   G  �  k  +   D  !   p  )   �  $   �     �  '   �  #        >     Y  F   y     �  8   �  �     1   �  <   �       #     >   5  3   t  H   �  1   �     #     :  #   Q  8   u  4   �  !   �  '        -  "   G  .   j  5   �  ,   �  ,   �  ,   )  ?   V     �  9   �  D   �  4   2     g     }  %   �     �  &   �     �  (        >  �   ^    �  �  !  �   (  �   �(  (  �)     �*  $   �*     �*     +  2   2+                           *   ,                         7                                   /      5      3       &         )   
      !   9      :         8          (          .              1       ;       +            '   -      <   	      #      0       6       "       %      $   4          2         %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB format is invalid. If you upgraded from an older version of apt, please remove and re-create the database. DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read .dsc Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s IO to subprocess/file failed Internal error, failed to create %s Malformed override %s line %llu #1 Malformed override %s line %llu #2 Malformed override %s line %llu #3 Malformed override %s line %llu (%s) No selections matched Package extension list is too long Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to mkstemp %s Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-dump-solver

apt-dump-solver is an interface to store an EDSP scenario in
a file and optionally forwards it to another solver.
 Usage: apt-extracttemplates file1 [file2 ...]

apt-extracttemplates is used to extract config and template files
from debian packages. It is used mainly by debconf(1) to prompt for
configuration questions before installation of packages.
 Usage: apt-ftparchive [options] command
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
  -o=?  Set an arbitrary configuration option Usage: apt-internal-planner

apt-internal-planner is an interface to use the current internal
installation planner for the APT family like an external one,
for debugging or the like.
 Usage: apt-internal-solver

apt-internal-solver is an interface to use the current internal
resolver for the APT family like an external one, for debugging or
the like.
 Usage: apt-sortpkgs [options] file1 [file2 ...]

apt-sortpkgs is a simple tool to sort package information files.
By default it sorts by binary package information, but the -s option
can be used to switch to source package ordering instead.
 W:  W: Unable to read directory %s
 W: Unable to stat %s
 Waited for %s but it wasn't there realloc - Failed to allocate memory Project-Id-Version: apt 1.4~beta1
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2020-05-12 19:45+0000
PO-Revision-Date: 2016-12-05 21:09+0100
Last-Translator: Oriol Debian <oriol.debian@gmail.com>
Language-Team: Catalan <debian-l10n-catalan@lists.debian.org>
Language: ca
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
   %s no té una entrada dominant de binari
   %s no té una entrada dominant
   %s no té una entrada dominant de font
   el mantenidor de %s és %s, no %s
  DeLink %s [%s]
  DeLink s'ha arribat al límit de %sB.
 *** No s'ha pogut enllaçar %s a %s Arxiu sense el camp paquet Arxiu sense registre de control No es pot determinar la versió de debconf. Està instal·lat debconf? Comprimeix el fil La sortida comprimida %s necessita un joc de compressió El format de la base de dades és invàlid. Si heu actualitzat des d'una versió més antiga de l'apt, suprimiu i torneu a crear la base de dades. La BD és vella, s'està intentant actualitzar %s La base de dades està corrompuda, fitxer renomenat a %s.old E:  E: Els errors s'apliquen al fitxer  S'ha produït un error en processar el fitxer de continguts %s S'ha produït un error en processar el directori %s S'ha produït un error en escriure la capçalera al fitxer de continguts No s'ha pogut crear el conducte IPC al subprocés No s'ha pogut bifurcar No s'ha pogut obrir %s No s'ha pogut llegir el fitxer .dsc No s'ha pogut llegir la línia predominant del fitxer %s No s'ha pogut llegir mentre es calculava la suma MD5 No s'ha pogut llegir l'enllaç %s No s'ha pogut canviar el nom de %s a %s No s'ha pogut resoldre %s No es pot determinar l'estat de %s Ha fallat l'E/S del subprocés sobre el fitxer S'ha produït un error intern, no s'ha pogut crear %s Línia predominant %s malformada %llu núm 1 Línia predominant %s malformada %llu núm 2 Línia predominant %s malformada %llu núm 3 Hi ha una sobreescriptura mal formada %s en la línia %llu (%s) No s'ha trobat cap selecció La llista de les extensions dels paquets és massa llarga No es troben alguns fitxers dins del grup de fitxers del paquet `%s' La llista d'extensions de les fonts és massa llarga L'arbre està fallant No es pot aconseguir un cursor No es pot crear el fitxer temporal %s No es pot obrir %s No es pot obrir el fitxer de DB %s: %s No es pot escriure en %s Algorisme de compressió desconegut '%s' Registre del paquet desconegut! Forma d'ús: apt-dump-solver

apt-dump-solver és una interfície per emmagatzemar un escenari EDSP en un fitxer i opcionalment enviar-lo a un altre resolutor.
 Forma d'ús: apt-extracttemplates fitxer1 [fitxer2 ...]

apt-extracttemplates és una eina per a extreure informació dels 
fitxers de configuració i plantilla dels paquets debian.
L'usa bàsicament debconf(1) per fer preguntes sobre la configuració
abans d'instal·lar els paquets
 Forma d'ús: apt-ftparchive [opcions] ordre
Ordres:   packages camí_binaris [fitxer_substitucions prefix_camí]]
          sources camí_fonts [fitxer_substitucions [prefix_camí]]
          contents camí
          release camí
          generate config [grups]
          clean config

apt-ftparchive genera fitxers d'índex per als arxius de Debian.
Gestiona molts estils per a generar-los, des dels completament automàtics
als substituts funcionals per dpkg-scanpackages i dpkg-scansources.

apt-ftparchive genera fitxers Package des d'un arbre de .deb. El
fitxer Package conté tots els camps de control de cada paquet així com
la suma MD5 i la mida del fitxer. Es suporten els fitxers de substitució
per a forçar el valor de Prioritat i Secció.

D'un mode semblant, apt-ftparchive genera fitxers Sources des d'un arbre
de .dsc. Es pot utilitzar l'opció --source-override per a especificar un
fitxer de substitucions de src.

L'ordre «packages» i «sources» hauria d'executar-se en l'arrel de
l'arbre. CamíBinaris hauria de ser el punt base de la recerca recursiva
i el fitxer de substitucions hauria de contenir senyaladors de substitució.
Prefixcamí s'afegeix als camps del nom de fitxer si està present.
Exemple d'ús a l'arxiu de Debian:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Opcions:
  -h    Aquest text d'ajuda
  --md5 Generació del control MD5
  -s=?  Fitxer de substitucions per a fonts
  -q    Silenciós
  -d=?  Selecciona la base de dades de memòria cau opcional
  --no-delink Habilita el mode de depuració delink
  --contents  Genera el fitxer amb els continguts de control
  -c=?  Llegeix aquest fitxer de configuració
  -o=?  Estableix una opció de configuració arbitrària Forma d'ús: apt-internal-planner

apt-internal-planner és una interfície per usar el planificador
intern actual d'instal·lació. Tant per la família APT com per una
externa, per depuració i d'altres.
 Forma d'ús: apt-internal-solver

apt-internal-solver és una interfície per usar el resolutor
intern actual. Tant per la família APT com per una externa, 
per depuració i d'altres.
 Forma d'ús: apt-sortpkgs [opcions] fitxer1 [fitxer2 ...]

apt-sortpkgs és una senzilla eina per ordenar els fitxers
d'informació dels paquets. De forma predeterminada, ordena a través
de la informació del paquet binari, però es pot utilitzar l'opció
-s per ordenar a través del l'origen.
 A:  A: No es pot llegir el directori %s
 A: No es pot veure l'estat %s
 Esperava %s però no hi era realloc - No s'ha pogut assignar espai en memòria 