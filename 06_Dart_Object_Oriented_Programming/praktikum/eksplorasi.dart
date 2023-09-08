class Buku {
  int id;
  String judul;
  String penerbit;
  double harga;
  String kategori;

  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);

  @override
  String toString() {
    return 'ID: $id, Judul: $judul, Penerbit: $penerbit, Harga: Rp $harga, Kategori: $kategori';
  }
}

class TokoBuku {
  List<Buku> daftarBuku = [];

  void tambahBuku(Buku buku) {
    daftarBuku.add(buku);
  }

  void tampilkanSemuaBuku() {
    for (var buku in daftarBuku) {
      print(buku.toString());
    }
  }

  void hapusBuku(int id) {
    daftarBuku.removeWhere((buku) => buku.id == id);
  }
}

void main() {
  var toko = TokoBuku();

  var buku1 = Buku(1, "Laskar Pelangi", "Gramedia", 80000, "Fiksi");
  var buku2 = Buku(2, "Sang Pemimpi", "Gramedia", 85000, "Fiksi");
  var buku3 = Buku(3, "Dear Nathan", "Gramedia", 70000, "Romance");

  toko.tambahBuku(buku1);
  toko.tambahBuku(buku2);
  toko.tambahBuku(buku3);

  print("Daftar Buku:");
  toko.tampilkanSemuaBuku();

  print("\nMenghapus buku dengan ID 3");
  toko.hapusBuku(3);

  print("\nDaftar Buku setelah penghapusan:");
  toko.tampilkanSemuaBuku();
}