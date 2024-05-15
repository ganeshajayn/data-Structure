List<int> findConsecutive(List<int> arr) {
  int count = 1;
  List<int> consecutive = [];

  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] == arr[i + 1]) {
      count++;
    } else {}
    if (count > 1) {
      consecutive.add(arr[i]);
    }
    count = 1;
  }

  if (count > 1) {
    consecutive.add(arr[arr.length - 1]);
  }

  return consecutive;
}

void main() {
  List<int> arr = [1, 1, 0, 1, 1, 1];
  List<int> consecutive = findConsecutive(arr);
  print(consecutive.length);
}
