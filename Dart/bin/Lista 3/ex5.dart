

import 'dart:io';

void main() {
  print('Informe a nota 1');
  String nota1 = stdin.readLineSync()!;
  int valor1 = int.parse(nota1);
  print('Informe a nota 2');
  String nota2 = stdin.readLineSync()!;
  int valor2 = int.parse(nota2);
  print('Informe a nota 3'); 
  String nota3 = stdin.readLineSync()!;
  int valor3 = int.parse(nota3);

  double media = (valor1 + valor2 + valor3) / 3;
  print('A média final do aluno foi: $media');
  if (media >= 7) {
    print('Aluno está Aprovado');
  } else {
    print('Aluno está Reprovado');
  }
}