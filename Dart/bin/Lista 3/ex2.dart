

import 'dart:io';

void main() {
  print('Informe um número');
  String num = stdin.readLineSync()!;
  int valor = int.parse(num);

  int resto = valor % 2;
  if (resto  == 0) {
    print('O número $valor é par!');
  } else {
    print('O número $valor é ímpar!');
  }
}
