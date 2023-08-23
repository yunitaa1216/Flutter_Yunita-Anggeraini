//soal eksplorasi
void main(){
  String kata = "kasur rusak";
  String kata2 = "mobil balap";
  String katalowercase = kata.toLowerCase();
  String kata2lowercase = kata2.toLowerCase();

  String kataterbalik = reverseString(katalowercase);
  String kata2terbalik = reverseString(kata2lowercase);
  print("kata 1 : $kata, kata yang dibalik : $kataterbalik");
  print("kata 2 : $kata2, kata yang dibalik : $kata2terbalik");

  if (kata == kataterbalik) {
    print("kata 1 adalah palindrom");
  } else {
    print("kata 1 bukan palindrom");
  }

  if (kata2 == kata2terbalik) {
    print("kata 2 adalah palindrom");
  } else {
    print("kata 2 bukan palindrom");
  }

  print('==========================================================');
  int angka = 24;
  print("Faktor-faktor dari $angka adalah:");
  for (int i = 1; i <= angka; i++) {
    if (angka % i == 0) {
      print(i);
    }
  }
}
String reverseString(String input) {
  return String.fromCharCodes(input.runes.toList().reversed);
}