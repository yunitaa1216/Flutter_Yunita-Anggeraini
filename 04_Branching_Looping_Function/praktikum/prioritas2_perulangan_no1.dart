import 'dart:io';

void main() {
  int tinggiPiramida = 8;
  for (int tingkat = 1; tingkat <= tinggiPiramida; tingkat++) {
    for (int spasi = tinggiPiramida - tingkat; spasi > 0; spasi--) {
      stdout.write(' ');
    }
    for (int bintang = 1; bintang <= 2 * tingkat - 1; bintang++) {
      stdout.write('*');
    }
    stdout.write('\n');
  }
}