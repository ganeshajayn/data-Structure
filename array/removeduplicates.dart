void main() {
  List<int> array = [1, 2, 2, 3, 4, 4, 5, 5];

  List<int> uniqueArray = array.toSet().toList();

  print('Array after removing duplicates: $uniqueArray');
}
