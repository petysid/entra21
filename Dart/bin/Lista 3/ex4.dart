

import 'dart:io';

void main() {
  print('Informe o lado 1');
  String lado1 = stdin.readLineSync()!;
  int valor1 = int.parse(lado1);
  print('Informe o lado 2');
  String lado2 = stdin.readLineSync()!;
  int valor2 = int.parse(lado2);

  int area = valor1 * valor2;
  print('A área do retângulo é: $area m²');
} 