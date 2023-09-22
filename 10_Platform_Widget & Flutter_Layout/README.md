<h1><center>Platform Widget</center></h1>

### MaterialApp
<p>MaterialApp merupakan widget dasar yang mengemas seluruh widget dalam aplikasi. Widget ini digunakan pada sistem android merupakan desain antarmuka standar pada android. Untuk membangun halaman pada MaterialApp digunakan widget Scaffold. Dimana dalam MaterialApp dapat memiliki beberapa Scaffold artinya aplikasi dapat memiliki beberapa halaman.</p>

### CupertinoApp
<p>CupertinoApp merupakan widget dasar yang mengemas seluruh widget dalam aplikasi. Widget ini digunakan pada sistem iOS. Pada CupertinoApp perlu membuat variabel _themeDark untuk menyimpan tema. Hal ini diperlukan karena Cupertino tidak menyediakan ThemeData.dark(). Untuk membangun halaman pada CupertinoApp digunakan widget CupertinoPageScaffold.</p>

### Pengertian Layout
<p>Layout digunakan untuk mengatur tata letak berbagai material seperti image, text dll. Dalam flutter layout berbentuk widget dan dapat mengatur widget yang ada didalamnya.</p>

### Single-child Layout
Widget ini hanya dapat memiliki satu child saja seperti container, center, sizedbox dll.
- Container, membuat tampilan sebuah box yang bisa diatur menggunakan margin, padding dan border
- Center, membuat box yang memenui lebar dan tinggi ruang diluarnya
- SizedBox, merupakan bentuk sederhana dari container dimana membuat box yang dapat diatur lebar dan tingginya

### Multi-child Layout
Multi-child Layout digunakan jika kita ingin meletakkan child lebih dari satu. Dimana akan menggunakan properti children yang memiliki tipe array widget.
- Column, untuk mengatur widgets secara vertikal
- Row, untuk mengatur widgets secara horizontal
- ListView, untuk mengatur widgets dalam bentuk list dan dapat di scroll
- GridView, untuk mengatur widgets dalam bentuk galeri