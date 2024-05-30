class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class linkedlist {
  Node? head;
  Node? tail;

  var Na;

  void push(int data) {
    Node? newnode;

    if (head == null) {
      newnode = Node(data);
    } else {
      newnode!.next = tail;
      tail = newnode;
    }
  }

  void pop() {
    if (tail == null) {
      return;
    } else {
      tail = tail!.prev;
    }
  }

  void display() {
    Node? temp = head;
    while (temp?.data == null) {
      print(temp!.data);
      temp = temp.next;
    }
  }
}

void main() {
  linkedlist list = linkedlist();
  list.push(10);
  list.push(20);
  list.push(30);
  list.display();
}
