class Node {
  String? data;
  Node? next;
  Node? prev;
  Node(String data) {
    this.data = data;
  }
}

class linkedlist {
  Node? head;
  Node? tail;
  void addnode(String data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail!.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  void reverse() {
    Node? current = tail;
    if (tail == null) {
      print("empty string");
    } else {
      while (current != null) {
        print(current.data);
        current = current.prev;
      }
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
  linkedlist list = linkedlist();
  String name = "hello";
  for (int i = 0; i < name.length; i++) {
    list.addnode(name[i]);
  }
  print("after reversing");
  list.display();
  list.reverse();
}
