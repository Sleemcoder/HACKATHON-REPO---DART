void main () {
  List<int> quickSort(List<int> list) {
  // Base case: If the list is empty or has one element, it's already sorted
  if (list.length <= 1) {
    return list;
  }

  // Choose a pivot (we'll use the middle element)
  int pivot = list[list.length ~/ 2];

  // Create three lists to hold elements less than, equal to, and greater than the pivot
  List<int> less = [];
  List<int> equal = [];
  List<int> greater = [];

  // Go through each number in the list and put it in the correct list
  for (int num in list) {
    if (num < pivot) {
      less.add(num);
    } else if (num == pivot) {
      equal.add(num);
    } else {
      greater.add(num);
    }
  }

  // Recursively sort the less and greater lists, then combine them with the equal list
  return quickSort(less)..addAll(equal)..addAll(quickSort(greater));
}

  List<int> unsortedList = [33, 15, 10, 99, 76, 23];
  List<int> sortedList = quickSort(unsortedList);
  print(sortedList); // Output: [10, 15, 23, 33, 76, 99]

}