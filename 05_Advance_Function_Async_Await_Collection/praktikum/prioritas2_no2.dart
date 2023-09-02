import 'dart:math';

void main() {
  List<int> nilai = [7, 5, 3, 5, 2, 1];

  double total = 0;
  for (int nilaiIndividu in nilai) {
    total += nilaiIndividu;
  }
  double rataRata = total / nilai.length;
  int rataRataBulat = rataRata.ceil();

  print('Rata-rata: $rataRataBulat');
}