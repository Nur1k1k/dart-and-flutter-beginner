import 'dart:io';

void main(){
  // Создаем поток ввода для чтения данных с консоли
  var input = stdin;

  // Запрашиваем у пользователя ввод строки
  print('Введите строку:');
  String userInput = input.readLineSync() ?? ''; // Используем оператор ?? для предотвращения null

  // Переворачиваем строку
  String reversedString = reverseString(userInput);

  // Выводим результат
  print('Перевернутая строка: $reversedString');
}

// Функция для переворачивания строки
String reverseString(String input) {
  return String.fromCharCodes(input.runes.toList().reversed);
}