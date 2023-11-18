import 'dart:io';

void main() {
  print('Informe um número, por favor:');
  int numero = int.parse(stdin.readLineSync()!);

  if(numero >= 10){
    print('Maior ou igual a 10');
  }
}