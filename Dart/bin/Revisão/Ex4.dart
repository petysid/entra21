import 'dart:io';

void main() {
  print('Informe um número:');
  int numero = int.parse(stdin.readLineSync()!);
  print(++numero);
}