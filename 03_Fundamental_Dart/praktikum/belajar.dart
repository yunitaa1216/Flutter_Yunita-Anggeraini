void main(){
    // for (var i=0; i<10; i++){
    //     print(i);
    // }
    // int userage = 20;
    // print('umur pengguna: $userage tahun');

    // if (isDewasa(userage)) {
    //   print('pengguna dewasa');
    // } else {
    //   print('pengguna tidak dewasa');
    // }
    double panjangsisi = 5.0;
    double area =luaslingkaran(panjangsisi);
    print('luas persegi $area');
}

bool isDewasa(int age) {
  return age >= 18;
}

double luaslingkaran(double sisi){
  return sisi * sisi;
}