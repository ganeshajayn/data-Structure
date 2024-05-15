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
  list.display();
}
