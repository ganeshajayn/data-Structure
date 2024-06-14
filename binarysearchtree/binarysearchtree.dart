// class Node {
//   int data;
//   Node? left;
//   Node? right;

//   Node(this.data);
// }

// class BinarySearchTree {
//   Node? root;

//   void insertdata(int data) {
//     Node newnode = Node(data);
//     if (root == null) {
//       root = newnode;
//     } else {
//       Node? current = root;
//       while (true) {
//         if (data < current!.data) {
//           if (current.left == null) {
//             current.left = newnode;
//             return;
//           }
//           current = current.left;
//         } else {
//           if (current.right == null) {
//             current.right = newnode;
//             return;
//           }
//           current = current.right;
//         }
//       }
//     }
//   }

//   void inorder(Node? temp) {
//     if (temp != null) {
//       inorder(temp.left);
//       print(temp.data);
//       inorder(temp.right);
//     }
//   }

//   void preorder(Node? temp) {
//     if (temp != null) {
//       print(temp.data);
//       preorder(temp.left);
//       preorder(temp.right);
//     }
//   }

//   void postorder(Node? temp) {
//     if (temp != null) {
//       preorder(temp.left);
//       preorder(temp.right);
//       print(temp.data);
//     }
//   }
// }

// void main() {
//   BinarySearchTree binary = BinarySearchTree();
//   binary.insertdata(10);
//   binary.insertdata(40);
//   binary.insertdata(20);
//   binary.insertdata(50);
//   binary.insertdata(80);
//   binary.insertdata(60);
//   binary.insertdata(70);
//   binary.insertdata(15);
//   binary.insertdata(18);
//   binary.insertdata(14);
//   binary.inorder(binary.root);
//   print("--------------------");
//   binary.preorder(binary.root);
//   print("_________________");
//   binary.postorder(binary.root);
// }
import 'dart:ffi';

import '../binarysearch/binarysearch.dart';

class Node {
  int data;
  Node? right;
  Node? left;
  Node(this.data);
}

class Binarysearch {
  Node? root;
  void insertdata(int data) {
    Node newnode = Node(data);
    if (root == null) {
      root = newnode;
    } else {
      Node? current = root;
      while (true) {
        if (data < current!.data) {
          if (current.left == null) {
            current.left = newnode;
            return;
          }
          current = current.left;
        } else {
          if (current.right == null) {
            current.right = newnode;
            return;
          }
          current = current.right;
        }
      }
    }
  }

  bool contains(int data) {
    Node? current = root;
    while (current != null) {
      if (data == current.data) {
        return true;
      } else if (data < current.data) {
        current = current.left;
      } else {
        current = current.right;
      }
    }
    return false;
  }

  void inorder(Node? temp) {
    if (temp != null) {
      inorder(temp.left);
      print(temp.data);
      inorder(temp.right);
    }
  }
}

// void main() {
//   Binarysearch binary = Binarysearch();
//   binary.insertdata(10);
//   binary.insertdata(30);
//   binary.insertdata(40);
//   binary.insertdata(5);
//   print("--------");
//   // print(binary.contains(60));
//   print("---------------");
//   binary.inorder(binary.root);
// }

void main() {
  Binarysearch binary = Binarysearch();
  binary.insertdata(10);
  binary.insertdata(20);
  binary.insertdata(30);
  binary.insertdata(40);
  print('--------');
  binary.inorder(binary.root);
}
