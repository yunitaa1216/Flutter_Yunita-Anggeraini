void main() {
  List<dynamic> daftarData = [
    ['Judul', 'Twenty Five Twenty One'],
    ['Tahun Tayang', 2022],
    ['Pemain Utama', ['Kim Tae-ri', 'Nam Joo-hyuk']],
    ['Rating', 9.5],
  ];

  Map<String, dynamic> dataMap = {};

  for (var item in daftarData) {
    dataMap[item[0]] = item[1];
  }

  print(dataMap);
  for (var item in daftarData) {
    print('${item[0]}: ${item[1]}');
  }
}