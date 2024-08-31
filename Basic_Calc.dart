void main () {
double basicCalculator(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        throw ArgumentError("Division by zero is not allowed.");
      }
      return num1 / num2;
    case '%':
      if (num2 == 0) {
        throw ArgumentError("Division by zero is not allowed.");
      }
      return num1 % num2;
    default:
      throw ArgumentError("Invalid operator. Use +, -, *, /, or %.");
  }
}

double extendedCalculator(String expression) {
  List<String> parts = expression.split(' ');
  if (parts.length != 3) {
    throw ArgumentError("Invalid expression format. Use 'num1 operator num2'.");
  }

  double num1 = double.parse(parts[0]);
  String operator = parts[1];
  double num2 = double.parse(parts[2]);

  return basicCalculator(num1, num2, operator);
}

print(basicCalculator(10, 5, '+'));
  print(basicCalculator(10, 5, '-')); 
  print(basicCalculator(10, 5, '*')); // 50
  print(basicCalculator(10, 5, '/')); // 2
  print(basicCalculator(10, 5, '%')); // 0

  // Extended calculator
  print(extendedCalculator("10 + 5")); // 15
  print(extendedCalculator("10 / 2")); // 5
}