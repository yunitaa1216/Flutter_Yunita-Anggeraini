class Calculator {
  int angka1;
  int angka2;

  Calculator(this.angka1, this.angka2);

  int tambah() {
    return angka1 + angka2;
  }

  int kurang() {
    return angka1 - angka2;
  }

  int kali() {
    return angka1 * angka2;
  }

  double bagi() {
    if (angka2 == 0) {
      throw Exception('Tidak dapat melakukan pembagian dengan nol.');
    }
    return angka1 / angka2;
  }
}

void main() {
  int angkaPertama = 4;
  int angkaKedua = 2;

  Calculator kalkulator = Calculator(angkaPertama, angkaKedua);

  int hasilPenjumlahan = kalkulator.tambah();
  int hasilPengurangan = kalkulator.kurang();
  int hasilPerkalian = kalkulator.kali();
  double hasilPembagian = kalkulator.bagi();

  print('Hasil Penjumlahan: $hasilPenjumlahan');
  print('Hasil Pengurangan: $hasilPengurangan');
  print('Hasil Perkalian: $hasilPerkalian');
  print('Hasil Pembagian: $hasilPembagian');
}