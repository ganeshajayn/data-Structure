class Node {
  int value;
  Node? next;

  Node(this.value);
}

class SinglyLinkedList {
  Node? head;
  void append(int value) {
    if (head == null) {
      head = Node(value);
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(value);
    }
  }

  void insertAt(int value, int position) {
    Node newNode = Node(value);
    if (position == 0) {
      newNode.next = head;
      head = newNode;
    } else {
      Node? current = head;
      for (int i = 0; i < position - 1 && current != null; i++) {
        current = current.next;
      }
      if (current != null) {
        newNode.next = current.next;
        current.next = newNode;
      }
    }
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.append(1);
  list.append(2);
  list.append(3);
  list.insertAt(10, 1); // Insert 10 at position 1
  list.display();
}
