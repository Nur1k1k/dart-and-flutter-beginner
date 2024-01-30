import 'dart:io';

void main() {

  var input = stdin;
  print('Введите строку:');
  String userInput = input.readLineSync() ?? '';
  int characterCount = countCharacters(userInput);

  print('Количество символов (без пробелов): $characterCount');
}

int countCharacters(String input) {
  // Используем метод split('') для разделения строки на символы
  List<String> characters = input.split('');

  // Используем метод where() для фильтрации символов, исключая пробелы
  Iterable<String> nonSpaceCharacters = characters.where((char) => char.trim().isNotEmpty);
  return nonSpaceCharacters.length;
}
