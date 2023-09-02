Future<void> mengalikanData (List<int> data, int pengali) async {
  for (int i = 0; i < data.length; i++) {
    await Future.delayed(Duration(seconds: 1));
    
    data[i] *= pengali;
    
    print('Elemen ke-$i: ${data[i]}');
  }
}

void main() async {
  List<int> dataList = [2, 4, 6, 8, 10];
  int pengali = 2;

  print('List sebelum dikalikan:');
  print(dataList);

  await mengalikanData(dataList, pengali);

  print('List setelah dikalikan:');
  print(dataList);
}