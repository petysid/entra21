import 'dart:io';

void main() {
  print('Informe o primeiro número, por favor:');
  int numero1 = int.parse(stdin.readLineSync()!);

  print('Informe o segundo número, por favor:');
  int numero2 = int.parse(stdin.readLineSync()!);

  for(int contador = numero1 + 1 ; contador < numero2 ; contador++){
    print(contador);
  }
}