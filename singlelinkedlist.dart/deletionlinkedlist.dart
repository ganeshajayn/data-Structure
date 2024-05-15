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

  void deleteAt(int position) {
    if (head == null) return;

    if (position == 0) {
      head = head?.next;
    } else {
      Node? current = head;
      for (int i = 0; i < position - 1 && current != null; i++) {
        current = current.next;
      }
      if (current?.next != null) {
        current!.next = current.next?.next;
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
  list.deleteAt(1); // Delete element at position 1
  list.display();
}
