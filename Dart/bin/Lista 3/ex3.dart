

import 'dart:io';

void main() {
  print('Informe um número');
  String num = stdin.readLineSync()!;
  int valor = int.parse(num); 

  if (valor >= 0) {
    print('O número $valor é positivo');
  } else {
    print('O número $valor é negativo');
  }
}