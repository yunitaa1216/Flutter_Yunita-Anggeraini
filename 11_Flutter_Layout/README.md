<h1><center>Flutter Layout</center></h1>

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