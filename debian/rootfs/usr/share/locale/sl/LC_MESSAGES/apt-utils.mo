��    4      �  G   \      x  )   y     �  "   �     �                ,     H     e  1   �     �  ,   �  m   �  #   _  (   �     �     �     �     �  %     '   *     R     a  #   s  "   �     �     �     �     �       #   .  "   R  "   u  "   �     �  "   �  5   �  !   *	     L	     `	     w	     �	     �	  "   �	     �	  &  �	          #     C  !   Y  #   {  �  �  '   '     O  "   l  !   �     �  "   �  $   �          *  >   G     �  )   �  �   �  %   ]  B   �     �  $   �     �       ,   *  1   W     �     �  (   �  $   �     �          =     V  $   q  (   �  /   �  /   �  /        O  %   i  9   �  #   �     �          !  $   7     \     t     �  I  �     �     �        (   0   -   Y      (   .                 $   &   +   '   4   1         0                 3   %                                
                                           /         )                 2      ,           	                -                    !   "   #   *      %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB format is invalid. If you upgraded from an older version of apt, please remove and re-create the database. DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s IO to subprocess/file failed Internal error, failed to create %s Malformed override %s line %llu #1 Malformed override %s line %llu #2 Malformed override %s line %llu #3 No selections matched Package extension list is too long Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-ftparchive [options] command
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
 Waited for %s but it wasn't there realloc - Failed to allocate memory Project-Id-Version: apt 0.5.5
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2020-05-12 19:45+0000
PO-Revision-Date: 2012-06-27 21:29+0000
Last-Translator: Andrej Znidarsic <andrej.znidarsic@gmail.com>
Language-Team: Slovenian <sl@li.org>
Language: sl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=(n%100==1 ? 1 : n%100==2 ? 2 : n%100==3 || n%100==4 ? 3 : 0);
X-Launchpad-Export-Date: 2012-06-25 20:00+0000
X-Generator: Launchpad (build 15482)
X-Poedit-Country: SLOVENIA
X-Poedit-Language: Slovenian
X-Poedit-SourceCharset: utf-8
   %s nima tudi binarnega vnosa prepisa
   %s nima prepisanega vnosa
   %s nima izvornega vnosa prepisa
   Vzdrževalec %s je %s in ne %s
  RazVeži %s [%s]
  Dosežena meja RazVezovanja %sB.
 *** Napaka med povezovanjem %s in %s Arhiv ni imel polja s paketom Arhiv nima nadzornega zapisa Ni mogoče ugotoviti različice debconfa. Je sploh nameščen? Podrejeni predmet stiskanja Stisnjen izhod %s potrebuje niz stiskanja Oblika podatkovne zbirke je neveljavna. V kolikor ste nadgradili s starejše različice apt, podatkovno zbirko odstranite in jo znova ustvarite. PZ je star, poskušanje nadgradnje %s Podatkovna zbirka je pokvarjena, datoteka je preimenovana v %s.old E:  N: Napake se sklicujejo na datoteko  Napaka med obdelavo vsebine %s Napaka med obdelavo mape %s Napaka med pisanjem glave v datoteko vsebine Ustvarjanje cevi IPC do podopravila je spodletelo Vejitev ni uspela Ni mogoče odprti %s Napaka med branjem prepisane datoteke %s Med računanjem MD5 ni mogoče brati Napaka med branjem povezave %s Ni mogoče preimenovati %s v %s Ni mogoče razrešiti %s Napaka med določitvijo %s VI podopravila/datoteke je spodletel Notranja napaka. Ni mogoče ustvariti %s Slabo oblikovan prepis %s v vrstici %llu št. 1 Slabo oblikovan prepis %s v vrstici %llu št. 1 Slabo oblikovan prepis %s v vrstici %llu št. 3 Nobena izbira se ne ujema Seznam razširitev paketov je predolg Nekatere datoteke manjkajo v skupini datotek paketov `%s' Seznam razširitev virov je predolg Hoja drevesa je spodletela Ni mogoče najti kazalke Ni mogoče odpreti %s Ni mogoče odprti datoteke PZ %s: %s Ni mogoče pisati na %s Neznan algoritem stiskanja '%s' Neznan zapis paketa! Uporaba: apt-ftparchive [možnosti] ukaz
Ukazi: packages, binarypath [datoteka prepisa [predpona poti]]
          sources srcpath [datoteka prepisa [predpona poti]]
          contents path
          release path
          generate config [skupine]
          clean config

apt-ftparchive ustvari datoteke kazala za arhive Debian. Podpira
več slogov ustvarjanja od popolnoma samodejnih do funkcionalnih zamenjav
za dpkg-scanpackages in dpkg-scansources

apt-ftparchive ustvari datoteke paketov iz drevesa .debs. Datoteka
paketa vsebuje vsebino vseh nadzornih polj iz vsakega paketa kot tudi
razpršilo MD5 in velikost datoteke. Datoteka prepisa podpira vsiljenje
vrednosti Prednosti in Odseka.

Podobno apt-ftparchive ustvari datoteke paketov iz drevesa .dscs.
Možnost --source-override je mogoče uporabiti za navedbo datoteke prepisa src

Ukaza 'packages' in 'sources' je treba zagnati v korenu drevesa.
BinaryPath bi morala kazati na osnovno mapo rekurzivnega iskanja in
datoteka prepisa bi morala vsebovati zastavice prepisa Predpona je pripeta
v polja imena datoteke, če je prisotna. Primer uporabe iz arhiva Debian:
    apt-ftparchive packages dists/potato/main/binary-i386/ > \
                 dists/potato/main/binary-i386/Packages

Možnosti:
  -h    To besedilo pomoči
  --md5 ustvarjanje nadzorne vsote MD5
  -s=? datoteka prepisa vira
  -q     tiho
  -d=?  izbere izbirno podatkovno zbirko pomnilnika
  --no-delink omogoči način razhroščevanja razvezovanja
  --contents nadzira ustvarjanje datoteke vsebine
  -c=? prebere to nastavitveno datoteko
  -o=? nastavi poljubno možnost nastavitve O:  O: ni mogoče brati mape %s
 O: Ni mogoče določiti %s
 Program je čakal na %s a ga ni bilo tam realloc - Napaka med dodeljevanjem pomnilnika 