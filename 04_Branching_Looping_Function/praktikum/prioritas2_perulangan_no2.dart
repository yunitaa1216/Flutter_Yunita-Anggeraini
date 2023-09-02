import 'dart:io';

void main() {
  int tinggiPiramida = 11; 
  for (int tingkat = tinggiPiramida; tingkat >= 1; tingkat -= 2) {
    for (int spasi = 0; spasi < (tinggiPiramida - tingkat) ~/ 2; spasi++) {
      stdout.write(' ');
    }
    for (int bintang = 1; bintang <= tingkat; bintang++) {
      stdout.write('O');
    }
    stdout.write('\n');
  }

  for (int tingkat = 3; tingkat <= tinggiPiramida; tingkat += 2) {
    for (int spasi = 0; spasi < (tinggiPiramida - tingkat) ~/ 2; spasi++) {
      stdout.write(' ');
    }
    for (int bintang = 1; bintang <= tingkat; bintang++) {
      stdout.write('O');
    }
    stdout.write('\n');
  }
}