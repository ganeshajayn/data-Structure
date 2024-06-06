class Node {
  int data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  void push(int data) {
    Node newNode = Node(data);
    if (tail == null) {
      // If the list is empty, both head and tail will point to the new node
      head = newNode;
      tail = newNode;
    } else {
      // If the list is not empty, add the new node at the end
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void pop() {
    if (tail == null) {
      return; // If the list is empty, do nothing
    } else if (tail == head) {
      // If the list has only one element
      tail = null;
      head = null;
    } else {
      // Remove the last node
      tail = tail!.prev;
      tail!.next = null;
    }
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.push(10);
  list.push(20);
  list.push(30);
  list.display(); // Expected output: 10 20 30

  list.pop();
  list.display(); // Expected output: 10 20

  list.pop();
  list.display(); // Expected output: 10

  list.pop();
  list.display(); // Expected output: (nothing, as the list is empty)
}
