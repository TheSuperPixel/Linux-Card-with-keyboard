��    '      T  5   �      `     a     }     �     �  1   �  ,     #   3  (   W     �     �     �     �  %   �  '   �     &  #   8  "   \          �     �     �     �  #   �       "   -  5   P  !   �     �     �     �     �  "        %  &  =     d     h     �  #   �    �     �  &   �     &     D  :   d  4   �  .   �  7        ;     ?     R     o  -   �  &   �     �  '   �  !        @     `     }     �  *   �  $   �     �  )     1   8  !   j     �     �      �     �  )   �       �  8       $        >  &   Z                                     "   '             &      $         
                                        	                              !      %              #                     %s has no override entry
   %s maintainer is %s not %s
 *** Failed to link %s to %s Archive had no package field Cannot get debconf version. Is debconf installed? Compressed output %s needs a compression set DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create IPC pipe to subprocess Failed to open %s Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s IO to subprocess/file failed Internal error, failed to create %s No selections matched Package extension list is too long Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-ftparchive [options] command
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
 realloc - Failed to allocate memory Project-Id-Version: apt 1.0.5
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2020-05-12 19:45+0000
PO-Revision-Date: 2008-08-02 01:47-0400
Last-Translator: Gintautas Miliauskas <gintas@akl.lt>
Language-Team: Lithuanian <komp_lt@konferencijos.lt>
Language: lt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Launchpad-Export-Date: 2008-08-02 05:04+0000
   %s neturi perrašymo įrašo
   %s prižiūrėtojas yra %s, o ne %s
 *** Nepavyko susieti %s su %s Archyvas neturėjo paketo lauko Nepavyko sužinoti debconf versijos. Ar įdiegtas debconf? Suspaustai išvesčiai %s reikia suspaudimo rinkinio Duomenų bazė yra sena, bandoma atnaujinti %s Duomenų bazė pažeista, failas pervardintas į %s.old K:  K: Klaidos failui  Klaida apdorojant turinį %s Klaida apdorojant aplanką %s Klaida įrašant antraštę į turinio failą Nepavyko subprocesui sukurti IPC gijos Nepavyko atverti %s Nepavyko nuskaityti perrašymo failo %s Skaitymo klaida skaičiuojant MD5 Nepavyko nuskaityti nuorodos %s Nepavyko pervadinti %s į %s Nepavyko išspręsti %s Nepavyko patikrinti %s Nepavyko Nusk/Įraš į subprocesą/failą Vidinė klaida, nepavyko sukurti  %s Nėra atitikmenų Paketo plėtinių sąrašas yra per ilgas Kai kurių failų nėra paketų grupėje „%s“ Šaltinio plėtinys yra per ilgas Judesys medyje nepavyko Nepavyko atverti %s Nepavyko atverti DB failo %s: %s Nepavyko įrašyti į %s Nežinomas suspaudimo algoritmas „%s“ Nežinomas paketo įrašas! Naudojimas: apt-ftparchive [parametrai] komanda
Komandos: dvejatainių paketų kelias [perrašomasfailas [keliopriešdėlis]]
          sources aplankas [perrašomasfailas [kelippriešdėlis]]
          contents kelias
          release kelias
          generate parametras [grupės]
          clean parametras

apt-ftparchive generuoja indeksų failus, skirtus Debian archyvams. Palaikomi keli 
generavimo stiliai, įskaitant nuo pilnai automatizuoto iki funkcinių pakeitimų
skirtų dpkg-scanpackages ir dpkg-scansources

apt-ftparchive sugeneruoja paketų failus iš .debs medžio. Paketo failas turi visus
kontrolinius kiekvieno paketo laukus, o taip pat ir MD5 hešą bei failų dydžius. Perrašomasis
failas palaikomas tam, kad būtų priverstinai nustatytos Pirmenybių bei Sekcijų reikšmės.

Panašiai apt-ftparchive sugeneruoja ir Išeities failus iš .dscs medžio.
--source-override nuostata gali būti naudojama nustatant išeities perrašomąjį failą

"Paketų" bei "Išeičių" komandos turėtų būti paleistos failų medžio šaknyje. BinaryPath turėtų
nurodyti kelią į rekursinės paieškos pagrindą bei perrašytas failas turėtų turėti perrašymo žymes.
Keliopriešdėlis tai yra prirašomas prie failo vardų laikų jei tokių yra. Vartosenos pavyzdys
naudojant Debian archyvą:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Nuostatos:
  -h Šis pagalbos tekstas
  --md5 Valdyti MD5 generavimą
  -s=? Šaltinio perrašomas failas
  -q Tylėti
  -d=? Pasirinkti papildomą kešo duomenų bazę
  --no-delink Įjungti atjungiamąjį derinimo rėžimą
  -c=? Perskaityti šį nuostatų failą
  -o=? Nustatyti savarankišką konfigūracijos nuostatą Į:  Į: Nepavyko perskaityti aplanko %s
 Į: Nepavyko patikrinti %s
 realloc - Nepavyko išskirti atminties 