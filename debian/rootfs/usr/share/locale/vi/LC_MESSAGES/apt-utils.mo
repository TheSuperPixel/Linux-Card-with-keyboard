��    7      �  I   �      �  )   �     �  "   �          8     I     d     �     �  1   �     �  ,   �  m   )  #   �  (   �     �     �            %   <  '   b     �     �     �  #   �  "   �               6     K     ]  #   z  "   �  "   �  "   �  $   	     ,	  "   B	  5   e	  !   �	     �	     �	     �	     �	     
     -
  "   C
     f
  &  ~
     �     �     �  !   �  #     T  %  <   z  *   �  2   �  1        G  )   b  ,   �     �  (   �  P         Q  5   Z  �   �  I   G  Z   �     �  +   �  &     &   C  =   j  8   �  )   �          #  *   ?  *   j  %   �  *   �     �  5     >   <  *   {     �     �     �  %      /   &  %   V  A   |  (   �  &   �       4   +     `  8   u     �  )   �     �  <	       L%  &   Q%  1   x%  /   �%  F   �%               0   '                      	       +                     2           %   /   -   *         )                 .   3   ,            1                           "      
   4   $      #            !   5   7             6      (                       &      %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB format is invalid. If you upgraded from an older version of apt, please remove and re-create the database. DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read .dsc Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s IO to subprocess/file failed Internal error, failed to create %s Malformed override %s line %llu #1 Malformed override %s line %llu #2 Malformed override %s line %llu #3 Malformed override %s line %llu (%s) No selections matched Package extension list is too long Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to mkstemp %s Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-ftparchive [options] command
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
 Waited for %s but it wasn't there realloc - Failed to allocate memory Project-Id-Version: apt 1.0.8
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
POT-Creation-Date: 2020-05-12 19:45+0000
PO-Revision-Date: 2014-09-12 13:48+0700
Last-Translator: Trần Ngọc Quân <vnwildman@gmail.com>
Language-Team: Vietnamese <translation-team-vi@lists.sourceforge.net>
Language: vi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Language-Team-Website: <http://translationproject.org/team/vi.html>
X-Generator: Poedit 1.5.5
X-Poedit-SourceCharset: UTF-8
X-Poedit-Basepath: ../
   %s cũng không có mục ghi đè (override) nhị phân
   %s không có mục ghi đè (override)
   %s không có mục ghi đè (override) nguồn
   người bảo trì %s là %s không phải %s
  Bỏ liên kết %s [%s]
  Hết hạn bỏ liên kết của %sB.
 *** Gặp lỗi khi liên kết %s đến %s Kho không có trường gói Kho không có mục ghi điều khiển Không thể lấy phiên bản debconf. Debconf có được cài đặt chưa? Nén con Dữ liệu xuất đã nén %s cần một bộ nén Định dạng cơ sở dữ liệu không hợp lệ. Nếu bạn đã nâng cấp từ một phiên bản apt cũ, hãy gỡ bỏ nó và sau đó tạo lại cơ sở dữ liệu. Cơ sở dữ liệu đã cũ, nên đang cố nâng cấp lên thành %s Cơ sở dữ liệu bị hỏng nên đã đổi tên tập tin thành %s.old (old: cũ). L:  LỖI: có lỗi áp dụng vào tập tin  Gặp lỗi khi xử lý nội dung %s Gặp lỗi khi xử lý thư mục %s Gặp lỗi khi ghi phần đầu vào tập tin nộị dung Gặp lỗi khi tạo ống IPC đến tiến trình con Gặp lỗi khi rẽ nhánh tiến trình Gặp lỗi khi mở %s Gặp lỗi khi đọc .dsc Việc đọc tập tin đè %s bị lỗi Gặp lỗi khi đọc trong khi tính MD5 Gặp lỗi khi đọc liên kết %s Việc đổi tên %s thành %s bị lỗi Gặp lỗi khi phân giải %s Việc lấy thông tin thống kê cho %s bị lỗi Gặp lỗi khi nhập/xuất vào tiến-trình-con/tập-tin Lỗi nội bộ, gặp lỗi khi tạo %s Sai override %s dòng %llu #1 Sai override %s dòng %llu #2 Sai override %s dòng %llu #3 Sai “override” %s dòng %llu (%s) Không có cái được chọn khớp được Danh sách mở rộng gói quá dài Thiếu một số tập tin trong nhóm tập tin gói “%s”. Danh sách mở rộng nguồn quá dài Việc di chuyển qua cây bị lỗi Không thể lấy con trỏ Không thể tạo tập tin tạm (hàm mkstemp) %s Không thể mở %s Không thể mở tập tin cơ sở dữ liệu %s: %s. Không thể ghi vào %s Không biết thuật toán nén “%s” Không hiểu bản ghi gói! Cách dùng: apt-ftparchive [tùy_chọn...] lệnh

[ftparchive: FTP archive: kho FTP]

Lệnh: packages binarypath [tập_tin_đè [tiền_tố_đường_dẫn]]
      sources srcpath [tập_tin_đè[tiền_tố_đường_dẫn]]
      contents path
      release path
      generate config [các_nhóm]
      clean config

(packages:    những gói;
binarypath:   đường dẫn nhị phân;
sources:      những nguồn;
srcpath:      đường dẫn nguồn;
contents path: đường dẫn nội dung;
release path: đường dẫn bản đã phát hành;
generate config [groups]: tạo ra cấu hình [các nhóm];
clean config: cấu hình toàn mới)

apt-ftparchive (kho ftp) thì tạo ra tập tin chỉ mục cho kho Debian.
Nó hỗ trợ nhiều cách tạo ra, từ cách tự động hoàn toàn
đến cách thay thế hàm cho dpkg-scanpackages (dpkg-quét_gói)
và dpkg-scansources (dpkg-quét_nguồn).

apt-ftparchive tạo ra tập tin Gói ra cây các .deb.
Tập tin gói chứa nội dung các trường điều khiển từ mỗi gói,
cùng với băm MD5 và kích cỡ tập tin.
Hỗ trợ tập tin đè để buộc giá trị Ưu tiên và Phần

Tương tự, apt-ftparchive tạo ra tập tin Nguồn ra cây các .dsc
Có thể sử dụng tùy chọn “--source-override” (đè nguồn)
để ghi rõ tập tin đè nguồn

Lệnh “packages” (gói) và “sources” (nguồn) nên chạy tại gốc cây.
BinaryPath (đường dẫn nhị phân) nên chỉ tới cơ bản của việc tìm kiếm đệ quy,
và tập tin đè nên chứa những cờ đè.
Pathprefix (tiền tố đường dẫn) được phụ thêm vào
những trường tên tập tin nếu có.
Cách sử dụng thí dụ từ kho Debian:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Tùy chọn:
  -h    _Trợ giúp_ này
  --md5 Điều khiển cách tạo ra MD5
  -s=?  Tập tin đè nguồn
  -q    _Im lặng_ (không xuất chi tiết)
  -d=?  Chọn _cơ sở dữ liệu_ nhớ tạm tùy chọn
  --no-delink Mở chế độ gỡ lỗi _bỏ liên kết_
  --contents  Điều khiển cách tạo ra tập tin _nội dung_
  -c=?  Đọc tập tin cấu hình này
  -o=?  Đặt một tùy chọn cấu hình tùy ý, v.d. “-o dir::cache=/tmp” CB:  CB: Không thể đọc thư mục %s
 CB: Không thể lấy thông tin thống kê %s
 Cần %s nhưng mà không thấy nó ở đây realloc (cấp phát lại) - việc cấp phát bộ nhớ bị lỗi 