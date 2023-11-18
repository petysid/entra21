import 'dart:io';

void main() {
  numeroUsuario().then((valor) {
    print('O número é: $valor');
  }).catchError((e) {
    if (e is MyException) {
      print(e.cause);
    }
  });
}

Future<int> numeroUsuario() async {
  print('Informe um número:');
  try {
    return int.parse(stdin.readLineSync()!);
  } catch (e) {
    throw MyException('Valor inválido');
  }
}

class MyException implements Exception {
  String cause;
  MyException(this.cause);
}
