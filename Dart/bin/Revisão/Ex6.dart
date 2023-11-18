import 'dart:io';

void main(List<String> args) {

  const valor = 50;

  print('Informe um número, por favor:');
  int numero = int.parse(stdin.readLineSync()!);

  int resultado = numero * valor;
  print('O resultado da multiplicação é: $resultado');
}