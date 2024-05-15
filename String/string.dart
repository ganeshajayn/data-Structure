String change(String str, int key) {
  int newKey = key % 26;
  List<int> charCodes =
      List<int>.generate(str.length, (index) => str.codeUnitAt(index));

  for (int i = 0; i < charCodes.length; i++) {
    int letterPosition = charCodes[i] + newKey;

    if (letterPosition <= 122) {
      charCodes[i] = letterPosition;
    } else {
      charCodes[i] = 96 + letterPosition % 122;
    }
  }

  return String.fromCharCodes(charCodes);
}

void main() {
  String str = "example";
  int key = 3;
  print(change(str, key));
}
//String questions






// String change(String str, int key) {
//   int newkey = key % 26;
//   List<int> charcodes =
//       List<int>.generate(str.length, (index) => str.codeUnitAt(index));
//   for (int i = 0; i < charcodes.length; i++) {
//     int letterposition = charcodes[i] + newkey;
//     if (letterposition <= 122) {
//       charcodes[i] = letterposition;
//     } else {
//       charcodes[i] = 96 + letterposition % 122;
//     }
//   }
//   return String.fromCharCode(charcodes);

// }

// void main() {
//   String str = "hai";
//   int key = 2;
//   print(change(str, key));
// }
