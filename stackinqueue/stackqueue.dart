class queuestack<t> {
  List<t> stack1 = [];
  List<t> stack2 = [];

  void enqueue(t value) {
    stack1.add(value);
  }

  t deque() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.removeLast();
  }

  t peek() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.last;
  }
}

void main() {
  var queue = queuestack<int>();
  queue.enqueue(10);
  queue.enqueue(5);
  queue.enqueue(8);
  //print(queue.peek);
  print(queue.deque());
}
