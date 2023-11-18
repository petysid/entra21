import 'dart:io';

void main(List<String> args) {
  try {
    nivel1();
  } catch (e) {
    print('Erro');
  }
}

nivel1() {
  try {
    nivel2();
  } on FormatException catch (e) {
    print('Falha ao converter');
  }
}

nivel2() {
  print('Informe o primeiro número, por favor:');
  int numero1 = int.parse(stdin.readLineSync()!);
  print('Informe o segundo número, por favor:');
  int numero2 = int.parse(stdin.readLineSync()!);

  print('O $numero1 dividido pelo $numero2 é igual a ${numero1 ~/ numero2}');
}
