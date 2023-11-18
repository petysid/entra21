import 'dart:io';

void main() {
  
  int opcao;

  do {
    print('Informe um número de 1 à 5:');
    opcao = int.parse(stdin.readLineSync()!);
  }while(opcao < 1 || opcao > 5);

  print('Fim');
}