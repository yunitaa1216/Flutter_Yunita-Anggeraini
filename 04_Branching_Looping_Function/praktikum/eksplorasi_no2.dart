import 'dart:io';

void main() {
  int angka = 9;
  int baris = 10;
  int kolom = 10;

  print('Tabel Perkalian $angka:');
  
  for (int i = 1; i <= baris; i++) {
    for (int j = 1; j <= kolom; j++) {
      int hasil = i * j;
      String hasilPerkalian = '$hasil'.padLeft(4);
      stdout.write(hasilPerkalian);
    }
    stdout.write('\n');
  }
}