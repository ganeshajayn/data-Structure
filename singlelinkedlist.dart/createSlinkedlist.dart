// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class Slinkedlist {
//   Node? head;
//   Node? tail;
//   void addnode(int data) {
//     Node newnode = Node(data);
//     if (head == null) {
//       head = newnode;
//     } else {
//       tail!.next = newnode;
//     }
//     tail = newnode;
//   }

//   void display() {
//     if (head == null) {
//       print("emppty");
//     }
//     Node? temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main() {
//   Slinkedlist list = Slinkedlist();
//   // list.display();
//   list.addnode(20);
//   list.addnode(30);
//   list.addnode(40);
//   list.display();
// }

//delete a node from single linked List

// class Node {
//   int data;
//   Node? next;
//   Node(this.data);
// }

// class linkedlist {
//   Node? head;
//   Node? tail;
//   void addnode(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail!.next = newNode;
//     }
//     tail = newNode;
//   }

//   void display() {
//     if (head == null) {
//       print("Empty");
//       return;
//     }
//     Node? temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }

//   void deletenode(int data) {
//     if (head == null) {
//       print('List is empty');
//       return;
//     }
//     if (head!.data == data) {
//       head = head!.next;
//       if (head == null) {
//         tail = null;
//       }
//       return;
//     }
//     Node? current = head;
//     Node? prev;

//     while (current != null && current.data != data) {
//       prev = current;
//       current = current.next;
//     }
//     if (current == null) {
//       print("Node is not found ");
//       return;
//     }
//     prev!.next = current.next;
//     if (prev.next == null) {
//       tail = prev;
//     }
//   }
// }

// void main() {
//   linkedlist list = linkedlist();
//   list.addnode(20);
//   list.addnode(40);
//   list.addnode(50);
//   list.display();
//   list.deletenode(20);
//   list.display();
// }

// insert a new value in the linkedlist

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Linkedlist {
  Node? head;
  Node? tail;
  void addnode(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail!.next = newnode;
    }
    tail = newnode;
  }

  void display() {
    if (head == null) {
      print("List is empty");
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  // void insertafter(int value, int newdata) {
  //   Node? current = head;
  //   while (current != null && current.data != value) {
  //     current = current.next;
  //   }
  //   if (current == null) {
  //     print("value not found");
  //     return;
  //   }
  //   Node newnode = Node(newdata);
  //   newnode.next = current.next;
  //   current.next = newnode;
  // }
  // void removeduplicates() {
  //   Node? current = head;
  //   while (current != null) {
  //     Node? next = current.next;
  //     while (next != null && current.data == next.data) {
  //       next = next.next;
  //     }
  //     current.next = next;
  //     if (next == tail && next!.data != next.data) {
  //       tail = current;
  //       tail!.next = null;
  //     }
  //     current = next;
  //   }
  // }
  void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }
}

void main() {
  Linkedlist list = Linkedlist();
  list.addnode(20);
  list.addnode(30);
  list.addnode(40);
  list.addnode(50);

  list.addnode(60);
  list.addnode(70);
  list.addnode(80);

  list.display();
  print("after removing");
  // list.removeduplicates();
  print("after reverse");
  list.reverse();
  list.display();
}
