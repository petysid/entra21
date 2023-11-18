import 'dart:io';

void main() {
  print('Informe um número, por favor:');
  int numero = int.parse(stdin.readLineSync()!);

  if(numero == 5 || numero == 50) {
    print('Válido');
  } else {
    print('Inválido');
  }
}