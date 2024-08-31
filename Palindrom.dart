void main() {
  bool isPalindrome(String s) {
    // Remove spaces, punctuation, and convert to lowercase
    String sanitizedInput = s.replaceAll(RegExp(r'[\W_]+'), '').toLowerCase();

    // Initialize two pointers
    int left = 0;
    int right = sanitizedInput.length - 1;

    // Compare characters from both ends
    while (left < right) {
      if (sanitizedInput[left] != sanitizedInput[right]) {
        return false;
      }
      left++;
      right--;
    }

    return true;
  }

  bool isNumericPalindrome(int number) {
    // Convert the number to a string and check if it's a palindrome
    return isPalindrome(number.toString());
  }

  print(isPalindrome("Was it a car or a cat I saw?")); 
  print(isPalindrome("hello")); 
  print(isPalindrome("Racecar"));

  print(isNumericPalindrome(12321));
  print(isNumericPalindrome(12345));
}
