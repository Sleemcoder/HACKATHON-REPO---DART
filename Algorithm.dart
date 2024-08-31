
// Main Function
void main() {
  // Merge function
List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int leftIndex = 0;
  int rightIndex = 0;

  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] <= right[rightIndex]) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }

  // Add remaining elements
  result.addAll(left.sublist(leftIndex));
  result.addAll(right.sublist(rightIndex));

  return result;
}

// Merge Sort
List<int> mergeSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }
  int middle = list.length ~/ 2;
  List<int> left = list.sublist(0, middle);
  List<int> right = list.sublist(middle);
  return merge(mergeSort(left), mergeSort(right));
}

// Quick Sort
List<int> quickSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }
  int pivot = list[list.length ~/ 2];
  List<int> less = [];
  List<int> equal = [];
  List<int> greater = [];
  for (int num in list) {
    if (num < pivot) {
      less.add(num);
    } else if (num == pivot) {
      equal.add(num);
    } else {
      greater.add(num);
    }
  }
  return quickSort(less)..addAll(equal)..addAll(quickSort(greater));
}

// Bubble Sort
List<int> bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

  // Example list of ages
  List<int> ages = [29, 15, 42, 24, 31, 19];

  // Quick Sort
  print('Original ages: $ages');
  List<int> sortedByQuickSort = quickSort([...ages]);
  print('Ages sorted by Quick Sort: $sortedByQuickSort');

  // Merge Sort
  List<int> sortedByMergeSort = mergeSort([...ages]);
  print('Ages sorted by Merge Sort: $sortedByMergeSort');

  // Bubble Sort
  List<int> sortedByBubbleSort = bubbleSort([...ages]);
  print('Ages sorted by Bubble Sort: $sortedByBubbleSort');
}
