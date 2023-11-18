import 'dart:io';

void main() {
  print('Informe um número, por favor:');
  int numero = int.parse(stdin.readLineSync()!);
  switch(numero) {
    case 1:
    print('É um');
    break;
    case 2:
    print('É dois');
    break;
    case 3:
    print('É três');
    break;
    default:
    print('Inválido');
  }
}