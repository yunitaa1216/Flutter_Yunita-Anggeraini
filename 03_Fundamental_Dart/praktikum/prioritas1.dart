// Soal prioritas 1

void main () {
//Keliling dan luas persegi
double sisi = 5;
double kelilingpersegi = 4 * sisi;
double luaspersegi = sisi * sisi;

//Keliling dan luas persegi panjang
double panjangp = 6;
double lebarp = 4;
double kelilingpersegipanjang = 2 * (panjangp + lebarp);
double luaspersegipanjang = panjangp * lebarp;

// Keliling dan luas lingkaran
double phi = 3.14;
int jarijari = 6;
double kelilinglingkaran = 2 * phi * jarijari;
double luaslingkaran = phi * jarijari *jarijari;

    print('Keliling persegi dengan panjang sisi $sisi adalah $kelilingpersegi');
    print('Luas persegi dengan panjang sisi $sisi adalah $luaspersegi');
    print('==========================================================');
    print('Keliling persegi panjang dengan panjang $panjangp dan lebar $lebarp adalah $kelilingpersegipanjang');
    print('Luas persegi panjang dengan panjang $panjangp dan lebar $lebarp adalah $luaspersegipanjang');
    print('==========================================================');
    print('Keliling lingkaran dengan jari-jari $jarijari adalah $kelilinglingkaran');
    print('Luas lingkaran dengan jari-jari $jarijari adalah $luaslingkaran');
}