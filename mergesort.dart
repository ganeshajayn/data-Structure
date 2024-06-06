void main(List<String> args) {
  List<int> result = mergesort([5, 6, 4, 74, 8, 9]);
  print(result);
}

mergesort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int mid = (arr.length / 2).floor();
  List<int> leftarr = arr.sublist(0, mid);
  List<int> rightarr = arr.sublist(mid);
  return merge(mergesort(leftarr), mergesort(rightarr));
}

merge(List<int> leftarr, List<int> rightarr) {
  List<int> sortedar = [];
  while (leftarr.isNotEmpty && rightarr.isNotEmpty) {
    if (leftarr[0] <= rightarr[0]) {
      sortedar.add(leftarr.removeAt(0));
    } else {
      sortedar.add(rightarr.removeAt(0));
    }
  }
  return [...sortedar, ...leftarr, ...rightarr];
}
