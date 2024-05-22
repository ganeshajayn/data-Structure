void bubblesort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> arry = [1, 5, 4, 6, 9, 8, 10, 87];
  print("before sorting $arry");
  print("after sorting");
  bubblesort(arry);
  print(arry);
}
