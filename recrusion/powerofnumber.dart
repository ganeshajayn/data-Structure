int power(int base, int exponent) {
  if (exponent == 0) {
    return 1;
  }
  return base * power(base, exponent - 1);
}

void main() {
  int base = 2;
  int exponent = 3;
  print('$base raised to the power of $exponent is ${power(base, exponent)}');
}
