void main() {
  List<String> input1 = ['amuse', 'tommy kaira', 'spoon', 'HKS', 'litchfield', 'amuse', 'HKS'];
  List<String> input2 = ['JS Racing', 'amuse', 'spoon', 'spoon', 'JS Racing', 'amuse'];

  List<String> output1 = menghapusDuplikat(input1);
  List<String> output2 = menghapusDuplikat(input2);

  print(output1);
  print(output2);
}

List<String> menghapusDuplikat(List<String> input) {
  Set<String> dataUnik = Set<String>();
  List<String> output = [];

  for (String value in input) {
    if (dataUnik.add(value)) {
      output.add(value);
    }
  }

  return output;
}