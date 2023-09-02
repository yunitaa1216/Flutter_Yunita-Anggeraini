void main() {
  int input1 = 23;
  int input2 = 12;

  if (isPrime(input1)) {
    print('23 adalah bilangan prima');
  } else {
    print('23 bukan bilangan prima');
  }

  if (isPrime(input2)) {
    print('12 adalah bilangan prima');
  } else {
    print('12 bukan bilangan prima');
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}