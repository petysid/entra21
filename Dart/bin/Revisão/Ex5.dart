import 'dart:io';

void main() {
  print('Informe o primeiro número:');
  int numero1 = int.parse(stdin.readLineSync()!);

  print('Informe o segundo número:');
  int numero2 = int.parse(stdin.readLineSync()!);
  
  int soma = numero1 + numero2;
  print('A soma dos números solicitados é: $soma');
}