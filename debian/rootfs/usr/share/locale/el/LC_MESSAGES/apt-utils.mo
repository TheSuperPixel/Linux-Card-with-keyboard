��    0      �  C         (  )   )     S  "   o     �     �     �     �     �       1   3     e  ,   t  #   �  (   �     �     �          (  %   F  '   l     �     �  #   �  "   �     �          ,     A     S  #   p     �  "   �  5   �  !        %     9     P     b     �  "   �     �  &  �     �     �       !   2  #   T  �  x  S   \  A   �  H   �  8   ;     t  1   �  <   �  I     I   K  i   �  !   �  k   !     �  k        y  '   }  H   �  B   �  ]   1  r   �  '     /   *  Q   Z  L   �  -   �  ;   '  (   c  F   �  F   �  R     1   m  m   �  U     i   c  #   �  4   �  ,   &  Q   S  *   �  =   �  -       <     H'  D   L'  H   �'  C   �'  9   (     *                              )   $             !         /      -                              	      '                %       &                          (       .         ,          #       "                        +   
         0      %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s IO to subprocess/file failed Internal error, failed to create %s No selections matched Package extension list is too long Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to open %s Unable to open DB file %s: %s Unable to write to %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-ftparchive [options] command
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
PO-Revision-Date: 2008-08-26 18:25+0300
Last-Translator: Θανάσης Νάτσης <natsisthanasis@gmail.com>
Language-Team: Greek <debian-l10n-greek@lists.debian.org>
Language: el
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms:  nplurals=2; plural=(n != 1);
   %s δεν έχει ούτε εγγραφή δυαδικής παράκαμψης
   %s δεν περιέχει εγγραφή παράκαμψης
   %s δεν έχει εγγραφή πηγαίας παράκαμψης
   %s συντηρητής είναι ο %s όχι ο %s
 Αποσύνδεση %s [%s]
  Αποσύνδεση ορίου του %sB hit.
     Αποτυχία σύνδεσης του %s με το %s Η αρχειοθήκη δεν περιέχει πεδίο πακέτων Η αρχειοθήκη δεν περιέχει πεδίο ελέγχου Δεν βρέθηκε η έκδοση του debconf. Είναι το debconf εγκατεστημένο; Συμπίεση απογόνου Η συμπιεσμένη έξοδος του %s χρειάζεται καθορισμό συμπίεσης Η βάση δεν είναι ενημερωμένη, γίνεται προσπάθεια να αναβαθμιστεί το %s Η βάση είναι κατεστραμμένη, το αρχείο μετονομάστηκε σε %s.old E:  E: Σφάλματα στο αρχείο Σφάλμα επεξεργασίας περιεχομένων του %s Σφάλμα επεξεργασίας του καταλόγου %s Σφάλμα εγγραφής κεφαλίδων στο αρχείο περιεχομένων Αποτυχία κατά τη δημιουργία διασωλήνωσης IPC στην υποδιεργασία Αποτυχία αγκίστρωσης Αποτυχία ανοίγματος του %s Αποτυχία ανάγνωσης του αρχείου παράκαμψης %s Αποτυχία ανάγνωσης κατά τον υπολογισμό MD5 Αποτυχία ανάγνωσης του %s Αποτυχία μετονομασίας του %s σε %s Αδύνατη η εύρεση του %s Αποτυχία εύρεσης της κατάστασης του %s. απέτυχε η Ε/Ε στην υποδιεργασία/αρχείο Εσωτερικό Σφάλμα, Αποτυχία δημιουργίας του %s Δεν ταιριαξε καμία επιλογή Ο κατάλογος επεκτάσεων του πακέτου είναι υπερβολικά μακρύς Λείπουν μερικά αρχεία από την ομάδα πακέτων '%s' Ο κατάλογος επεκτάσεων των πηγών είναι υπερβολικά μακρύς Αποτυχία ανεύρεσης Αδύνατη η πρόσβαση σε δείκτη Αδύνατο το άνοιγμα του %s Το άνοιγμά του αρχείου της βάσης %s: %s απέτυχε Αδύνατη η εγγραφή στο %s Άγνωστος Αλγόριθμος Συμπίεσης '%s' Άγνωστη εγγραφή πακέτου! Χρήση: apt-ftparchive [επιλογές] εντολή
Εντολές: packages binarypath [overridefile [pathprefix]]
          sources srcpath [overridefile [pathprefix]]
          contents path
          release path
          generate config [groups]
          clean config

Το apt-ftparchive παράγει αρχεία περιεχομένων για τις αρχειοθήκες Debian
Υποστηρίζει πολλές παραλλαγές παραγωγής, από απόλυτα αυτοματοποιημένες έως
λειτουργικές αντικαταστάσεις για την dpkg-scanpackages και dpkg-scansources

Το apt-ftparchive παράγει αρχεία Package από ένα σύνολο αρχείων .debs. Στο
αρχείο Package περιέχονται όλα τα πεδία ελέγχου κάθε πακέτου καθώς και
το μέγεθος τους και το MD5 hash. Υποστηρίζει την ύπαρξη αρχείου παράκαμψης
για τη βεβιασμένη αλλαγή των πεδίων Priority (Προτεραιότητα) και Section
(Τομέας).

Με τον ίδιο τρόπο, το apt-ftparchive παράγει αρχεία πηγών (Sources) από μια
ιεραρχία αρχείων .dsc. Η επιλογή --source-override μπορεί να χρησιμοποιηθεί
για παράκαμψη των αρχείων πηγών src.

Οι εντολές 'packages' και 'sources' θα πρέπει να εκτελούνται στον βασικό
κατάλογο της ιεραρχίας.Το BinaryPath θα πρέπει να δείχνει στον αρχικό
κατάλογο που θα ξεκινάει η αναδρομική αναζήτηση και το αρχείο παράκαμψης
θα πρέπει να περιέχει τις επιλογές παράκαμψης. Το Pathprefix προστίθεται στα
πεδία όνομάτων αρχείων, αν υπάρχει. Δείτε παράδειγμα χρήσης στην αρχειοθήκη
πακέτων του Debian :
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Επιλογές:
  -h    Αυτό το κείμενο βοηθείας
  --md5 Έλεγχος παραγωγής MD5
  -s=?  αρχείο παράκαμψης πηγών
  -q    Χωρίς έξοδο
  -d=?  Επιλογή προαιρετικής βάσης δεδομένων cache
  --no-delink Αποσφαλμάτωση του delinking
  --contents  Έλεγχος παραγωγής αρχείου περιεχομένων
  -c=?  Χρήση αυτού του αρχείου ρυθμίσεων
  -o=?  Ορισμός αυθαίρετης επιλογής ρύθμισης W:  W: Αδύνατη η ανάγνωση του καταλόγου  %s
 W: Αδύνατη η εύρεση της κατάστασης του %s
 Αναμονή του %s, αλλά δε βρισκόταν εκεί realoc - Αδυναμία εκχώρησης μνήμης 