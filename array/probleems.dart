class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class linkedlist {
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
      print("no value found");
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void deletemid() {
    Node? fast = head;
    Node? slow = head;
    Node? prev;
    while (fast != null && fast.next != null) {
      slow = slow!.next;
      prev = slow;
      fast = fast.next!.next;
    }
    prev!.next = slow!.next;
  }
}

void main() {
  linkedlist list = linkedlist();
  list.addnode(20);
  list.addnode(30);
  list.addnode(40);
  list.addnode(50);
  list.display();
  print('after deleting middle');
  list.deletemid();
  list.display();
}
