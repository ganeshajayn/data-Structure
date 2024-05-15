void main() {
  List<int> linearlist = [1, 2, 3, 4, 5, 6, 4, 8];
  int target = 4;
  int index = linearsearch(linearlist, target);
  if (index != -1) {
    print("element is $index");
  } else
    () {
      print("no element");
    };
}

int linearsearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i + 1;
    }
  }
  return -1;
}
