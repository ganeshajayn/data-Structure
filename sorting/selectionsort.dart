// void selection(List<int> a) {
//   int n = a.length;
//   for (int i = 0; i < n - 1; i++) {
//     int minindex = i;
//     for (int j = i + 1; j < n; j++) {
//       if (a[j] < a[minindex]) {
//         minindex = j;
//       }
//     }

//     int temp = a[minindex];
//     a[minindex] = a[i];
//     a[i] = temp;
//   }
// }

// void main() {
//   List<int> numbers = [9, 8, 7, 4, 5, 6, 1];
//   selection(numbers);
//   print(numbers);
// }
// void selection(List<int> a) {
//   int n = a.length;
//   for (int i = 0; i < n; i++) {
//     int minindex = i;
//     for (int j = i + 1; j < n; j++) {
//       if (a[j] > a[minindex]) {
//         minindex = j;
//       }
//     }
//     int temp = a[i];
//     a[i] = minindex;
//     a[i] = temp;
//   }
// }
void selection(List<int> a) {
  int n = a.length;
  for (int i = 0; i < n; i++) {
    int minindex = i;
    for (int j = i + 1; j < n; j++) {
      if (a[j] > a[minindex]) {
        minindex = j;
      }
    }
    int temp = a[i];
    a[i] = minindex;

    a[i] = temp;
  }
}

void main() {
  List<int> numbers = [9, 8, 7, 4, 6, 4, 54, 5, 4];
  print("before sroting $numbers");
  selection(numbers);
  print(numbers);
}
