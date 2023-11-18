import 'dart:io';

void main() {
  print('Informe a primeira nota:');
  String primeiraNota = stdin.readLineSync()!;
  int valor1 = int.parse(primeiraNota);
  
  print('Informe a segunda nota:');
  String segundaNota = stdin.readLineSync()!;
  int valor2 = int.parse(segundaNota);

  print('Informe a terceira nota:');
  String terceiraNota = stdin.readLineSync()!;
  int valor3 = int.parse(terceiraNota);

  double media = ((valor1 * 0.2) + (valor2 * 0.3) + (valor3 * 0.5));
  print('A média final do aluno foi: ${media.toStringAsFixed(2)}');
  if(media >= 7) {
    print('O Aluno está Aprovado');
  } else if (media >= 5) {
    print('O Aluno está em Recuperação');
  } else {
    print('O Aluno está Reprovado');
  }
}