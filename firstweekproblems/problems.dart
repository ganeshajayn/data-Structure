class Node {
  int data;
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
    ;
    tail = newnode;
  }

  void display() {
    if (head == null) {
      print("empty");
    }

    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void deletenode(int data) {
    if (head == null) {
      print("List is empty");
      return;
    }
    if (head!.data == data) {
      head = head!.next;
      if (head == null) {
        tail = null;
      }
      return;
    }
    Node? prev;
    Node? current = head;
    while (current != null && current.data != data) {
      prev = current;
      current = current.next;
    }
    if (current == null) {
      print("no value found");
      return;
    }
    prev!.next = current.next;
    if (prev.next == null) {
      tail = prev;
    }
  }

  void deletemiddlenode() {
    if (head == null || head!.next == null) {
      print("no value found");
      return;
    }
    Node? slowptr = head;
    Node? fastptr = head;
    Node? prev;
    while (fastptr != null && fastptr.next != null) {
      prev = slowptr;
      slowptr = slowptr!.next;
      fastptr = fastptr.next!.next;
    }
    if (prev != null) {
      prev.next = slowptr!.next;
    }
  }
}

void main() {
  linkedlist list = linkedlist();
  list.addnode(20);
  list.addnode(30);
  list.addnode(40);
  list.addnode(60);
  list.display();
  print("after deleting");
  list.deletemiddlenode();
  list.display();
}
