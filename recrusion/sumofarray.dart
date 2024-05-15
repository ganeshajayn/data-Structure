int sumArray(List<int> array, int n) {
  if (n <= 0) {
    return 0;
  }
  return sumArray(array, n - 1) + array[n - 1];
}

void main() {
  List<int> array = [1, 2, 3, 4, 5];
  print('Sum of array elements is ${sumArray(array, array.length)}');
}
