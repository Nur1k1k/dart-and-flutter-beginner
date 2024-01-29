
import 'dart:io';

void main(){
  stdout.writeln('Введите первую строку: ');
  String hello = stdin.readLineSync()!;
  stdout.writeln('Введите вторую строку: ');
  String world = stdin.readLineSync()!;
  print("Результат: $hello $world");
}