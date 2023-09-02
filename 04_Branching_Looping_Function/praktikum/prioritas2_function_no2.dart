void main() {
  void hitungFaktorial(int nilai) {
    BigInt faktorial = BigInt.one;
    for (int i = 1; i <= nilai; i++) {
      faktorial *= BigInt.from(i);
    }
    print("Faktorial dari $nilai adalah $faktorial");
  }

  int nilai1 = 10;
  int nilai2 = 40;
  int nilai3 = 50;

  hitungFaktorial(nilai1);
  hitungFaktorial(nilai2);
  hitungFaktorial(nilai3);
}