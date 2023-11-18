import 'dart:io';

void main() {
  print('Informe o número 1:');
  int numero1 = int.parse(stdin.readLineSync()!);

  print('Informe o número 2:');
  int numero2 = int.parse(stdin.readLineSync()!);

  int resultado = numeroMenor(numero1,numero2);
  print('O número menor é: $resultado');
}

int numeroMenor(numero1, numero2){
  if(numero1 > numero2){
    return numero2;
  }
  return numero1;
  }
