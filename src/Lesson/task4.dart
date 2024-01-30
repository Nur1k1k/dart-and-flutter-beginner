import 'dart:io';

void main() {

  var input = stdin;
  print('Введите строку:');
  String mainString = input.readLineSync() ?? '';

  print('Введите подстроку для поиска:');
  String searchString = input.readLineSync() ?? '';

  List<int> indices = findSubstringIndices(mainString, searchString);

  if (indices.isEmpty) {
    print('Подстрока не найдена.');
  } else {
    print('Индексы первого вхождения подстроки: $indices');
  }
}

List<int> findSubstringIndices(String mainString, String searchString) {
  List<int> indices = [];
  int index = mainString.indexOf(searchString);

  while (index != -1) {
    indices.add(index);
    index = mainString.indexOf(searchString, index + 1);
  }

  return indices;
}
