import 'dart:io';

void main() {
  print('Informe um número, por favor:');
  int numero = int.parse(stdin.readLineSync()!);

  if(numero > 18 && numero < 60) {
    print('Permitido');
  } else {
    print('Não permitido');
  }
}