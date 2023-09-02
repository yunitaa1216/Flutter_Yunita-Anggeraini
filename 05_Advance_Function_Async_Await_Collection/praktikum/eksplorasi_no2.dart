void main() {
  List<String> input = ['js', 'js', 'js', 'golang', 'python', 'js', 'js', 'golang', 'rust'];

  Map<String, int> frekuensi = {};

  for (String data in input) {
    frekuensi[data] = (frekuensi[data] ?? 0) + 1;
  }

  frekuensi.forEach((key, value) {
    print('$key: $value');
  });
}