import 'dart:io';

void main() {
  print('Informe um nome, por favor:');
  String nome = stdin.readLineSync()!;
  print(nome.toUpperCase());
}