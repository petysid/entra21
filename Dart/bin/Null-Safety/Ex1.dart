import 'dart:io';

void main(List<String> args) {
  const finaliza = 'Sair';
  String validacao = 'Sim';

  while (validacao == 'Sim') {
    print('Informe um número para tabuada:');
    int? numero = int.tryParse(stdin.readLineSync()!);

    print('');
    if (numero != null) {
      print('A tabuada do $numero é:');
      print('');
      for (int i = 1; i <= 10; i++) {
        int tabuada = numero * i;
        print('$numero x $i = $tabuada');
      }
    } else {
      print('Erro, por favor informe o número novamente:');
    }
    print('Digite Sim para continuar, para encerrar digite Sair');
    validacao = stdin.readLineSync()!;
  }
}
