// Prioritas 1 no 1 dan 2

class Hewan {
  double berat;

  Hewan(this.berat);
}

class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    double totalBeratMuatan = muatan.fold(0.0, (total, hewan) => total + hewan.berat);
    if (totalBeratMuatan + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print('Hewan ditambahkan ke dalam muatan.');
    } else {
      print('Kapasitas muatan sudah penuh, hewan tidak dapat ditambahkan.');
    }
  }

  double totalMuatan() {
    return muatan.fold(0.0, (total, hewan) => total + hewan.berat);
  }
}

void main() {
  Hewan anjing = Hewan(5.3);
  Hewan kucing = Hewan(3);

  Mobil mobil = Mobil(10.0);

  mobil.tambahMuatan(anjing);
  mobil.tambahMuatan(kucing);

  print('Muatan mobil:');
  for (var hewan in mobil.muatan) {
    print('Berat badan hewan: ${hewan.berat} kg');
  }

  print('Total berat muatan mobil: ${mobil.totalMuatan()} kg');
}