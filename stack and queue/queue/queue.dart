class Node {
  int data;
  Node? next;
  Node(this.data);
}

class queue {
  Node? front;
  Node? rear;
  void Enqueue(int data) {
    Node newnode = Node(data);
    if (rear == null) {
      front = rear = newnode;
      return;
    }
    rear!.next = newnode;
    rear = newnode;
  }

  void display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void dequeue() {
    if (front == null) {
      print("empty");
    }
    front = front!.next;
    if (front == null) {
      rear = null;
    }
  }
}

void main() {
  queue list = queue();
  list.Enqueue(10);
  list.Enqueue(20);
  list.Enqueue(50);
  list.display();
  print('after deque');
  list.dequeue();
  list.display();
}
