void main() {
  List<int> numbers = [38, 27, 43, 3, 9, 82, 10];
  print("Unsorted list: $numbers");
  mergeSort(numbers, 0, numbers.length - 1);
  print("Sorted list: $numbers");
}

void mergeSort(List<int> array, int left, int right) {
  if (left < right) {
    int middle = (left + right) ~/ 2;

    // Recursively sort the first and second halves
    mergeSort(array, left, middle);
    mergeSort(array, middle + 1, right);

    // Merge the sorted halves
    merge(array, left, middle, right);
  }
}

void merge(List<int> array, int left, int middle, int right) {
  int n1 = middle - left + 1;
  int n2 = right - middle;

  // Create temporary arrays
  List<int> leftArray = List<int>.filled(n1, 0);
  List<int> rightArray = List<int>.filled(n2, 0);

  // Copy data to temporary arrays
  for (int i = 0; i < n1; i++) {
    leftArray[i] = array[left + i];
  }
  for (int j = 0; j < n2; j++) {
    rightArray[j] = array[middle + 1 + j];
  }

  // Merge the temporary arrays back into the original array
  int i = 0, j = 0, k = left;
  while (i < n1 && j < n2) {
    if (leftArray[i] <= rightArray[j]) {
      array[k] = leftArray[i];
      i++;
    } else {
      array[k] = rightArray[j];
      j++;
    }
    k++;
  }

  // Copy any remaining elements of leftArray
  while (i < n1) {
    array[k] = leftArray[i];
    i++;
    k++;
  }

  // Copy any remaining elements of rightArray
  while (j < n2) {
    array[k] = rightArray[j];
    j++;
    k++;
  }
}
