void insertion(List<int> arr) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

void main() {
  List<int> numbers = [5, 2, 6, 4, 8, 10, 7, 1];
  print(numbers);
  print("after sorting");
  insertion(numbers);
  print(numbers);
}
