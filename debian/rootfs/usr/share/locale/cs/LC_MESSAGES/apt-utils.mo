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
  �   �  &  p  �   �  �   O  �   �     �     �       !   %  #   G  �  k  7   3  )   k  3   �     �     �  "   �  #        C     ]  >   }     �  3   �  �     '   �  0   �     �     �  $         (  ,   I  5   v     �     �     �  +   �           @      Y     z     �  *   �  *   �  .     .   0  .   _  0   �     �  1   �  9     5   G     }     �     �     �      �     �  (   
     3  �   P  �   �  �  �  �   �&  �   m'  �   #(     )     )     ;)  !   S)  -   u)                           *   ,                         7                                   /      5      3       &         )   
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
 Waited for %s but it wasn't there realloc - Failed to allocate memory Project-Id-Version: apt 1.4.2
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2020-05-12 19:45+0000
PO-Revision-Date: 2017-05-06 11:08+0200
Last-Translator: Miroslav Kure <kurem@debian.cz>
Language-Team: Czech <debian-l10n-czech@lists.debian.org>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n==1 ? 0 : n>=2 && n<=4 ? 1 : 2;
  %s nemá ani žádnou binární položku pro override
  %s nemá žádnou položku pro override
  %s nemá žádnou zdrojovou položku pro override
   správce %s je %s, ne %s
 Odlinkování %s [%s]
  Odlinkovací limit %sB dosažen.
 *** Nezdařilo se slinkovat %s s %s Archiv nemá pole Package Archiv nemá kontrolní záznam Nelze určit verzi programu debconf. Je debconf nainstalován? Komprimovat potomka Komprimovaný výstup %s potřebuje kompresní sadu Formát databáze je neplatný. Pokud jste přešli ze starší verze apt, databázi prosím odstraňte a poté ji znovu vytvořte. DB je stará, zkouším aktualizovat %s DB je porušená, soubor přejmenován na %s.old E:  E: Chyby se týkají souboru  Chyba při zpracovávání obsahu %s Chyba zpracování adresáře %s Chyba při zapisování hlavičky do souboru Selhalo vytvoření meziprocesové roury k podprocesu Volání fork() se nezdařilo Nelze otevřít %s Nelze přečíst .dsc Nezdařilo se přečíst override soubor %s Chyba čtení při výpočtu MD5 Nelze přečíst link %s Selhalo přejmenování %s na %s Chyba při zjišťování %s Nelze vyhodnotit %s V/V operace s podprocesem/souborem selhala Interní chyba, nezdařilo se vytvořit %s Zkomolený override soubor %s, řádek %llu #1 Zkomolený override soubor %s, řádek %llu #2 Zkomolený override soubor %s, řádek %llu #3 Zkomolený override soubor %s, řádek %llu (%s) Žádný výběr nevyhověl Seznam rozšíření balíku je příliš dlouhý Některé soubory chybí v balíkovém souboru skupiny %s Seznam zdrojových rozšíření je příliš dlouhý Průchod stromem selhal Nelze získat kurzor Nelze zavolat mkstemp %s Nelze otevřít %s Nelze otevřít DB soubor %s: %s Nelze zapsat do %s Neznámý kompresní algoritmus „%s“ Neznámý záznam o balíku! Použití: apt-dump-solver

apt-dump-solver slouží pro uložení EDSP scénáře do
souboru a případnému přeposlání jinému řešiteli.
 Použití: apt-extracttemplates soubor1 [soubor2 …]

apt-extracttemplates umí z balíků vytáhnout konfigurační skripty
a šablony. Využívá ho hlavně debconf(1) pro zobrazení některých
otázek ještě před samotnou instalací balíků.
 Použití: apt-ftparchive [volby] příkaz
Příkazy: packages binárnícesta [souboroverride [prefixcesty]]
         sources zdrojovácesta [souboroverride [prefixcesty]]
         contents cesta
         release cesta
         generate konfiguračnísoubor [skupiny]
         clean konfiguračnísoubor

apt-ftparchive generuje indexové soubory debianích archivů. Podporuje
několik režimů vytváření - od plně automatického až po funkční ekvivalent
příkazů dpkg-scanpackages a dpkg-scansources.

apt-ftparchive vytvoří ze stromu .deb souborů soubory Packages. Soubor
Packages obsahuje kromě všech kontrolních polí každého balíku také jeho
velikost a MD5 součet. Podporován je také soubor override, kterým můžete 
vynutit hodnoty polí Priority a Section.

Podobně umí apt-ftparchive vygenerovat ze stromu souborů .dsc soubory
Sources. Volbou --source-override můžete zadat zdrojový soubor override.

Příkazy „packages“ a „sources“ by se měly spouštět z kořene stromu.
BinárníCesta by měla ukazovat na začátek rekurzivního hledání a soubor 
override by měl obsahovat příznaky pro přepis. PrefixCesty, pokud je
přítomen, je přidán do polí Filename.
Reálný příklad na archivu Debianu:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Volby:
  -h          Tato nápověda
  --md5       Vygeneruje kontrolní MD5
  -s=?        Zdrojový soubor override
  -q          Tichý režim
  -d=?        Vybere volitelnou databázi pro vyrovnávací paměť
  --no-delink Povolí ladicí režim
  --contents  Vygeneruje soubor Contents
  -c=?        Načte tento konfigurační soubor
  -o=?        Nastaví libovolnou volbu Použití: apt-internal-planner

apt-internal-planner je rozhraní k aktuálnímu internímu plánovači
instalací, aby se dal použít jako externí nástroj, např. pro ladění.
 Použití: apt-internal-solver

apt-internal-solver je rozhraní k aktuálnímu internímu řešiteli
závislostí, aby se dal použít jako externí nástroj, např. pro ladění.
 Použtí: apt-sortpkgs [volby] soubor1 [soubor2 …]

apt-sortpkgs je jednoduchý nástroj pro setřídění souborů Packages.
Standardně řadí dle binárních balíků, ale volbou -s je možno
přepnout na řazení dle zdrojových balíků.
 W:  W: Nelze číst adresář %s
 W: Nelze vyhodnotit %s
 Čekali jsme na %s, ale nebyl tam realloc - Selhal pokus o přidělení paměti 