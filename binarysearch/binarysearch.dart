void main() {
  List<int> soretdlist = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int target = 8;
  int index = binarysearch(soretdlist, target);
  if (index != -1) {
    print("element is ${index + 1}");
  } else
    () {
      print("notfound");
    };
}

int binarysearch(List<int> list, int target) {
  int left = 0;
  int right = list.length - 1;
  while (left <= right) {
    int middle = left + (right - left) ~/ 2;
    if (list[middle] == target) {
      return middle;
    } else if (list[middle] < target) {
      left = middle + 1;
    } else
      () {
        right = middle - 1;
      };
  }
  return -1;
}
