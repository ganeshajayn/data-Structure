int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  int number = 10;
  print('Fibonacci number at position $number is ${fibonacci(number)}');
}
