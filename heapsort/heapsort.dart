class MaxHeap {
  List<int>? heap;
  MaxHeap() {
    heap = [];
  }

  // Function to swap elements at two indices in a list
  void swap(int i, int j) {
    int temp = heap![j];
    heap![j] = temp;
  }

  // Function to heapify a subtree with the root at given index
  void heapify(int n, int i) {
    int largest = i; // Initialize largest as root
    int left = 2 * i + 1; // Left child
    int right = 2 * i + 2; // Right child

    // If left child is larger than root
    if (left < n && heap![left] > heap![largest]) {
      largest = left;
    }

    // If right child is larger than largest so far
    if (right < n && heap![right] > heap![largest]) {
      largest = right;
    }

    // If largest is not root
    if (largest != i) {
      swap(i, largest);

      // Recursively heapify the affected sub-tree
      heapify(n, largest);
    }
  }

  // Function to insert a new value into the heap
  void insert(int value) {
    heap!.add(value);
    int i = heap!.length - 1;

    // Fix the max heap property if it is violated
    while (i != 0 && heap![(i - 1) ~/ 2] < heap![i]) {
      swap(i, (i - 1) ~/ 2);
      i = (i - 1) ~/ 2;
    }
  }

  // Function to remove the maximum element (root) from the heap
  int removeMax() {
    if (heap!.isEmpty) {
      throw Exception('Heap is empty');
    }

    int root = heap![0];
    heap![0] = heap!.removeLast();

    heapify(heap!.length, 0);
    return root;
  }

  // Function to build a max heap from an unsorted list
  void buildHeap(List<int> list) {
    heap = list;
    int n = heap!.length;

    // Build heap (rearrange list)
    for (int i = n ~/ 2 - 1; i >= 0; i--) {
      heapify(n, i);
    }
  }

  // Function to sort the heap
  List<int> heapSort() {
    // Create a copy of the heap to avoid modifying the original heap
    List<int> originalHeap = List.from(heap!);
    int n = heap!.length;
    for (int i = n - 1; i > 0; i--) {
      // Move current root to end
      swap(0, i);

      // Call max heapify on the reduced heap
      heapify(i, 0);
    }
    // Create a sorted list from the heap
    List<int> sortedList = List.from(heap!);
    heap = originalHeap; // Restore the original heap
    return sortedList.reversed.toList(); // Return sorted in ascending order
  }
}

// Example usage
void main() {
  MaxHeap maxHeap = MaxHeap();
  List<int> list = [12, 11, 13, 5, 6, 7];

  print("Original list: $list");

  // Build heap
  maxHeap.buildHeap(list);
  print("Heap after build: ${maxHeap.heap}");

  // Insert a new element
  maxHeap.insert(15);
  print("Heap after insert(15): ${maxHeap.heap}");

  // Remove the maximum element
  int max = maxHeap.removeMax();
  print("Removed max element: $max");
  print("Heap after removeMax(): ${maxHeap.heap}");

  // Sort the heap
  List<int> sortedList = maxHeap.heapSort();
  print("Sorted list: $sortedList");
}
