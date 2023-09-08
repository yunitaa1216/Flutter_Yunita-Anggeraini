abstract class Matematika {
  int x;
  int y;

  Matematika(this.x, this.y);

  int hasil();
}

class Kpk implements Matematika {
  int x;
  int y;

  Kpk(this.x, this.y);

  @override
  int hasil() {
    int max = x > y ? x : y;
    while (true) {
      if (max % x == 0 && max % y == 0) {
        return max;
      }
      max++;
    }
  }
}

class Fpb implements Matematika {
  int x;
  int y;

  Fpb(this.x, this.y);

  @override
  int hasil() {
    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }
    return x;
  }
}

void main() {
  int x = 12;
  int y = 18;

  Matematika operation = Kpk(x, y);
  print('Kelipatan persekutuan terkecil dari $x dan $y adalah: ${operation.hasil()}');

  operation = Fpb(x, y);
  print('Faktor persekutuan terbesar dari $x dan $y adalah: ${operation.hasil()}');
}