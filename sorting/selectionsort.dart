void selection(List<int> a) {
  int n = a.length;
  for (int i = 0; i < n - 1; i++) {
    int minindex = i;
    for (int j = i + 1; j < n; j++) {
      if (a[j] < a[minindex]) {
        minindex = j;
      }
    }

    int temp = a[minindex];
    a[minindex] = a[i];
    a[i] = temp;
  }
}

void main() {
  List<int> numbers = [9, 8, 7, 4, 5, 6, 1];
  selection(numbers);
  print(numbers);
}
