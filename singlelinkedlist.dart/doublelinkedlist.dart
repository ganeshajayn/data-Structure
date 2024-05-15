class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class linkedlist {
  Node? head;
  Node? tail;
  Node? prev;
  void addnode(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail!.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  // void insertafter(int data, int value) {
  //   Node newnode = Node(data);
  //   Node? current = head;
  //   while (current != null && current.data != value) {
  //     current = current.next;
  //   }
  //   if (current == null) {
  //     print("No values found");
  //     return;
  //   }
  //   newnode.next = current.next;
  //   newnode.prev = current;
  //   if (current.next != null) {
  //     current.next!.prev = newnode;
  //   }
  //   current.next = newnode;
  // }
  void deletenode(int data) {
    Node? current = head;
    while (current != null && current.data != data) {
      current = current.next;
    }
    if (current == null) {
      print("No data found");
      return;
    }
    if (current == head) {
      head = current.next;
      if (head != null) {
        head!.prev = null;
      }
      if (head == null) {
        tail = null;
      }
      return;
    }
    if (current == tail) {
      tail = current.prev;
      tail!.next = null;
      return;
    }
    current.prev!.next = current.next;
    current.next!.prev = current.prev;
  }
}

// void main() {
//   linkedlist list = linkedlist();
//   list.addnode(20);
//   list.addnode(30);
//   list.addnode(40);
//   list.addnode(50);
//   list.display();
//   print("after deletion");
//   list.deletenode(40);
//   list.display();
//   // print("after insertion");
//   // list.insertafter(45, 40);
//   // list.display();
// }
