import 'dart:io';

void main(){

  var input = stdin;
  print('Введите строку:');
  String userInput = input.readLineSync() ?? '';
  String reversedString = reverseString(userInput);

  print('Перевернутая строка: $reversedString');
}


String reverseString(String input) {
  return String.fromCharCodes(input.runes.toList().reversed);
}