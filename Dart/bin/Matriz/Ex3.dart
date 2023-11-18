import 'dart:io';

void main() {
  List<List> pessoas = [];
  String nome = '';
  while (nome.toUpperCase() != 'SAIR') {
    List temp = [];

    print('Informe o nome da pessoa:');
    nome = stdin.readLineSync()!;
    if (nome.toUpperCase() != 'SAIR') {
      temp.add(nome);

      print('Informe a idade da pessoa:');
      int idade = int.parse(stdin.readLineSync()!);
      temp.add(idade);

      print('Informe a cidade da pessoa:');
      String cidade = stdin.readLineSync()!;
      temp.add(cidade);

      pessoas.add(temp);
    }
  }
  print(pessoas);
}
