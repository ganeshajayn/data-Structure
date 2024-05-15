import 'dart:collection';

List<List<int>> findthepairs(List<int> arr) {
  Set<int> nums = HashSet();
  List<List<int>> result = [];
  for (int i = 0; i < arr.length; i++) {
    int num = arr[i];
    int match = 10 - num;
    if (nums.contains(match)) {
      result.add([num, match]);
    }
    nums.add(num);
  }
  return result;
}

void main() {
  List<int> arr = [1, 2, 4, 5, 6];
  List<List<int>> pairs = findthepairs(arr);
  if (pairs.isNotEmpty) {
    for (var pair in pairs) {
      print("${pair[0]}.${pair[1]}");
    }
  } else
    () {
      print("no pair found");
    };
}
