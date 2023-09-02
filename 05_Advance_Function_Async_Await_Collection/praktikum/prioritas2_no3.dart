void main() {
  int n = 5;

    menghitungFaktorial(n).then((result) {
    print('Faktorial dari $n adalah $result');
  });
}

Future<int> menghitungFaktorial(int n) async {
  int hasil = 1;

  for (int i = 2; i <= n; i++) {
    await Future.delayed(Duration(milliseconds: 100));
    hasil *= i;
  }

  return hasil;
}