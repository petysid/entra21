import 'dart:io';

String hello(String mensagem, String nome, int idade){
  return '$mensagem $nome com $idade anos';  
}

void main() {
  print('Informe o nome');
  String nome = stdin.readLineSync()!;

  print('Informe a idade');
  int idade = int.parse(stdin.readLineSync()!);

  String resultado = hello('Olá', nome, idade);
  print(resultado);
}