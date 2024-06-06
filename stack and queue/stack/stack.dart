// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class stack {
//   Node? top;
//   void push(int data) {
//     Node newnode = Node(data);
//     if (top == null) {
//       top = newnode;
//     } else {
//       newnode.next = top;
//       top = newnode;
//     }
//   }

//   void pop() {
//     if (top == null) {
//       print("stackoverflow");
//       return;
//     } else {
//       top = top!.next;
//     }
//   }

//   void display() {
//     Node? current = top;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// void main() {
//   stack list = stack();
//   list.push(20);
//   list.push(30);
//   list.push(40);
//   list.push(50);
//   list.display();

//   print("after removing");
//   list.pop();
//   list.display();
// }
class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
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
      print("stack overflow");
      return;
    } else {
      top = top!.next;
    }
  }

  void display() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Stack list = Stack();
  list.push(10);
  list.push(20);
  list.push(30);
  list.push(40);
  list.display();
  print("after removiing");
  list.pop();
  list.display();
}
