import 'dart:io';

void main() {
  print('Informe um nome minúsculo:');
  String nome = stdin.readLineSync()!;

  if(nome.toUpperCase() == 'MARIA'){
    print(nome.toUpperCase());
  }

}