import 'dart:io';

void main() {
  List<int> listaNumeros = [];

  try {
    while (true) {
      print('Informe o número:');
      int numeros = int.parse(stdin.readLineSync()!);
      listaNumeros.add(numeros);
    }
  } catch (e) {
    print(listaNumeros);
  }
}
