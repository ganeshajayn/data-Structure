List<int> changethenumberes(List<int> arr) {
  int count = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 6) {
      count++;
    }
  }
  arr.removeWhere((element) => element == 6);
  for (int i = 0; i < count; i++) {
    arr.add(6);
  }
  return arr;
}

void main() {
  List<int> arr = [6, 1, 6, 8, 10, 4, 5, 6, 3, 9, 6];
  print("orginal arr ${arr}");
  List<int> modifiedarray = changethenumberes(arr);

  print("modified array ${modifiedarray}");
}
