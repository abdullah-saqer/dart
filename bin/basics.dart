import 'dart:io';

void main(List<String> arguments) {
  var input = stdin.readLineSync();
  var number = int.parse(input);
  var result = '${number}';
  if(number % 2 == 0) {
    result += ' Even';
  } else {
    result += ' Odd';
  }
  if(number >= 0) {
    result += ' Positive';
  } else {
    result += ' Nigative';
  }
  print(result);
}
