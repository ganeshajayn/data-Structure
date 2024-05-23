void quickSort(List<int> list, int left, int right) {
  if (left < right) {
    int pivotIndex = partition(list, left, right);
    quickSort(list, left, pivotIndex - 1);
    // quickSort(list, pivotIndex + 1, right);
  }
}

int partition(List<int> list, int left, int right) {
  int pivot = list[right];
  int i = left - 1;
  for (int j = left; j < right; j++) {
    if (list[j] < pivot) {
      i++;
      swap(list, i, j);
    }
  }
  swap(list, i + 1, right);
  return i + 1;
}

void swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> list = [34, 7, 23, 32, 5, 62];
  print("Original list: $list");
  quickSort(list, 0, list.length - 1);
  print("Sorted list: $list");
}
