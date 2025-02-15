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
  �   �  &  p  �   �  �   O  �   �     �     �       !   %  #   G  !  k  8   �  (   �  6   �  "   &     I  8   Z  !   �     �     �  2   �       V   4  �   �  4     :   R     �  %   �     �     �  .   �  &        F     X     h  '   �     �  )   �  (   �          .  0   K     |  *   �  *   �  *   �  ,        I     d  1   �      �     �     �     
     '  (   8     a  +   }     �  �   �    ^  S  x   �   �'  �   �(  %  >)     d*     h*  !   �*  !   �*  %   �*                           *   ,                         7                                   /      5      3       &         )   
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
 Waited for %s but it wasn't there realloc - Failed to allocate memory Project-Id-Version: apt 1.0.5
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2020-05-12 19:45+0000
PO-Revision-Date: 2016-09-24 03:24+0300
Last-Translator: Mert Dirik <mertdirik@gmail.com>
Language-Team: Debian l10n Turkish <debian-l10n-turkish@lists.debian.org>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n!=1;
X-Generator: Poedit 1.8.7.1
X-Launchpad-Export-Date: 2013-02-04 12:16+0000
X-Poedit-SearchPath-0: .
   '%s' paketinin yerine geçecek bir ikili paket de yok
   %s için geçersiz kılma girdisi yok
   '%s' paketinin yerine geçecek bir kaynak paket yok
   %s geliştiricisi %s, %s değil
  DeLink %s [%s]
  %sB'lik bağ koparma (DeLink) sınırına ulaşıldı.
 *** %s, %s konumuna bağlanamadı Arşivde paket alanı yok Arşivin denetim kaydı yok debconf sürümü alınamıyor. debconf kurulu mu? Çocuğu sıkıştır Sıkıştırılmış %s çıktısı bir sıkıştırma kümesine ihtiyaç duymaktadır Veritabanı biçimi geçersiz. Eğer apt'ın eski bir sürümünden yükseltme yaptıysanız, lütfen veritabanını silin ve yeniden oluşturun. Veritabanı eski, %s yükseltilmeye çalışılıyor Veritabanı bozuk, dosya adı %s.old olarak değiştirildi H:  H: Hatalar şu dosya için geçerli:  %s içeriğini işlemede hata %s dizinini işlemede hata İçindekiler dosyasına başlık yazmada hata Altsürece IPC borusu oluşturulamadı fork yapılamadı %s açılamadı .dsc dosyası okunamadı Geçersiz kılma dosyası %s okunamadı MD5 hesaplanırken okunamadı %s readlink çağrısı başarısız oldu %s, %s olarak yeniden adlandırılamadı %s çözümlenemedi %s durum bilgisi alınamadı Altsürece/dosyaya GÇ işlemi başarısız oldu İç hata, %s oluşturulamadı Hatalı geçersiz kılma %s satır %llu #1 Hatalı geçersiz kılma %s satır %llu #2 Hatalı geçersiz kılma %s satır %llu #3 Hatalı geçersiz kılma %s satır %llu (%s) Hiçbir seçim eşleşmedi Paket uzantı listesi çok uzun '%s' paket dosyası grubunda bazı dosyalar eksik Kaynak uzantı listesi çok uzun Ağaçta gezinme başarısız İmleç alınamıyor mkstemp %s başarısız oldu %s açılamıyor Veritabanı dosyası %s açılamadı: %s %s dosyasına yazılamıyor Bilinmeyen sıkıştırma algoritması '%s' Bilinmeyen paket kaydı! Kullanım: apt-dump-solver

apt-dump-solver EDSP senaryolarının bir dosyada saklanmasını ve
diğer çözücülere aktarılması için arayüz sağlar.
 Kullanım: apt-extracttemplates dosya1 [dosya2 ...]

apt-extracttemplates, debian paketlerinden ayar ve şablon dosyalarını
almak için kullanılan bir araçtır. Esasen debconf(1) tarafından paket
kurulumlarından önce yapılandırma sorularının sorulmasında kullanılır.
 Kullanım: apt-ftparchive [seçenekler] komut
Komutlar:   packages ikilikonumu [geçersizkılmadosyası [konumöneki]]
            sources kaynakkonumu [geçersizkılmadosyası [konumöneki]]
            contents konum
            release konum
            generate yapılandırma [gruplar]
            clean yapılandırma

apt-ftparchive Debian arşivleri için indeks dosyaları üretir. 
dpkg-scanpackages ve dpkg-scansources için tamamen otomatikten
işlevsel yedeklere kadar birçok üretim çeşidini destekler.

apt-ftparchive, .deb dizinlerinden 'Package' dosyaları üretir. 'Package'
dosyası, her paketin MD5 doğrulama ve dosya büyüklüğü gibi denetim
alanlarının bilgilerini içerir. Öncelik (Priority) ve bölüm (Section)
değerlerini istenen başka değerlerle değiştirebilmek için bir geçersiz
kılma dosyası kullanılabilir.

Benzer şekilde, apt-ftparchive, .dscs dosyalarından 'Sources' dosyaları
üretir. '--source-override' seçeneği bir src geçersiz kılma dosyası
belirtmek için kullanılabilir.

'packages' ve 'sources' komutları dizin ağacının kökünde çalıştırıl-
malıdır. BinaryPath özyineli aramanın temeline işaret etmeli ve
geçersiz kılma dosyası geçersiz kılma bayraklarını içermelidir.
Pathprefix mevcutsa dosya adı alanlarının sonuna eklenir. Debian
arşivinden örnek kullanım şu şekildedir:

   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Seçenekler:
  -h    Bu yardım metni
  --md5 MD5 üretimini denetle
  -s=?  Kaynak geçersiz kılma dosyası
  -q    Sessiz
  -d=?  Seçimlik önbellek veritabanını seç
  --no-delink Bağ kurulmamış hata ayıklama kipini etkinleştir
  --contents  İçerik dosyası üretimini denetle
  -c=?  Belirtilen yapılandırma dosyası kullan
  -o=?  Yapılandırma seçeneği ayarla Kullanım: apt-internal-planner

apt-internal-planner APT ailesinin dâhilî planlamacısını hata ayıklama
gibi sebeplerle harici planlamacı gibi kullanmaya yarayan bir arayüzdür.
 Kullanım: apt-internal-solver

apt-internal-solver APT ailesinin dâhilî çözücüsünü hata ayıklama
gibi sebeplerle harici çözücü gibi kullanmaya yarayan bir arayüzdür.
 Kullanım: apt-sortpkgs [seçenekler] dosya1 [dosya2 ...]

apt-sortpkgs paket bilgi dosyalarını sıralamak için basit bir araçtır.
Öntanımlı olarak ikili paket bilgisine göre sıralama yapılır; ama -s
seçeneği kullanılarak kaynak paket bilgisine göre de sıralama yapılabilir.
 U:  U: %s dizini okunamıyor
 U: %s durum bilgisi alınamıyor
 %s için beklenildi ama o gelmedi realloc - Bellek ayırma yapılamadı 