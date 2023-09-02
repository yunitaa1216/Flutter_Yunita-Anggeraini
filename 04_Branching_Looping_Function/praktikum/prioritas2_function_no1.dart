double hitungLuasLingkaran(double phi, int jariJari) {
  return phi * jariJari * jariJari;
}

void main() {
  var hasil = hitungLuasLingkaran(3.14, 6);
  print(hasil);
}