double buku = 10000;
double pensil = 5000;
double tas = 100000;

double total_pembelian = 200000;
double diskon = 0.1;

//no 1
double jumlah_pembelian(double buku, double pensil, double tas){
  return buku + pensil + tas;
}

////no 2
double totalDiskon(double total_pembelian, double diskon){
  return total_pembelian * diskon;
}

void main(){
  double jumlahbeli = jumlah_pembelian(buku, pensil, tas);
  print('Jumlah pembelian $jumlahbeli');

  double JumlahDiskon = totalDiskon(total_pembelian, diskon);
  print("Jumlah Diskon dari total pembelian: $JumlahDiskon");
}