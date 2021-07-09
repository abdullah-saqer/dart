import 'dart:io';

void main(List<String> arguments) {
	try {
		print('Enter 1st number');
		var userInput1 = stdin.readLineSync();
		num num1 = int.parse(userInput1!);
		print('Enter 2nd number');
		var userInput2 = stdin.readLineSync();
		num num2 = int.parse(userInput2!);
		print('Enter Operation * / + -');
		var userInput3 = stdin.readLineSync();
		late num res;
		switch (userInput3) {
			case '+':
				res = num1 + num2;
				break;
			case '-':
				res = num1 - num2;
				break;
			case '*':
				res = num1 * num2;
				break;
			case '/':
				res = num1 / num2;
		}
		print('Output =>: $res');
	} catch(err) {
		print('Invalid Number or Operation');
	}
}
