void main() {
  var list = [12, 8, 9, 5, 4, 1, 23, 7];
  quicksort(list, 0, list.length - 1);
  print(list);
}

void quicksort(List array, int first, int last) {
  if (first >= last) {
    return;
  }

  int start = first + 1;
  int end = last;
  int pivotIndex = first;

  while (start <= end) {
    if (array[start] > array[pivotIndex] && array[end] < array[pivotIndex]) {
      int temp = array[start];
      array[start] = array[end];
      array[end] = temp;
    }
    if (array[start] <= array[pivotIndex]) {
      start++;
    }
    if (array[end] > array[pivotIndex]) {
      end--;
    }
  }

  int temp = array[end];
  array[end] = array[pivotIndex];
  array[pivotIndex] = temp;

  quicksort(array, first, end - 1);
  quicksort(array, end + 1, last);
}
