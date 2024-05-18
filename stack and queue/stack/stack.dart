class Node {
  int data;
  Node? next;
  Node(this.data);
}

class stack {
  Node? top;
  void push(int data) {
    Node newnode = Node(data);
    if (top == null) {
      top = newnode;
    } else {
      newnode.next = top;
      top = newnode;
    }
  }

  void pop() {
    if (top == null) {
      print("stackoverflow");
      return;
    } else {
      top = top!.next;
    }
  }

  void display() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  stack list = stack();
  list.push(20);
  list.push(30);
  list.push(40);
  list.push(50);
  list.display();

  print("after removing");
  list.pop();
  list.display();
}
