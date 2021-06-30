import 'dart:io';

void main(List<String> arguments) {
	print('Enter first number');
	var input = stdin.readLineSync();
	num number1 = int.parse(input);
	print('Enter second number');
	input = stdin.readLineSync();
	num number2 = int.parse(input);
	print('Enter operation (+, -, *, /)');
	input = stdin.readLineSync();
	num result;
	switch (input) {
		case '+':
			result = number1 + number2;
			break;
		case '-':
			result = number1 - number2;
			break;
		case '*':
			result = number1 * number2;
			break;
		case '/':
			result = number1 / number2;
	}
	print('Result: ${result ?? "invalid operation"}');
}
