import 'dart:io';

void main() {
  print('Informe um número, por favor:');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 5) {
    print('Maior ou igual a 5');
  } else {
    print('Menor que 5');
  }
}
