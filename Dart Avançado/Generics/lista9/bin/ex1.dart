import 'dart:io';

void main(List<String> args) {
  Queue<String> fila = Queue();

  String opcao = '';
  while ((opcao = menu()) != '3') {
    switch (opcao) {
      case '1':
        print('Informe o nome:');
        String nome = stdin.readLineSync()!;
        if (nome.isNotEmpty) {
          fila.insert(nome);
        }
        break;
      case '2':
        String? nome = fila.remove();
        if (nome != null) {
          print('Removido: $nome');
        } else {
          print('Fila vazia');
        }
        break;
      case '3':
        break;
      default:
        print('Opção inválida!');
    }
  }
}

String menu() {
  print('''
    Selecione a opção: 
  1. Inserir na lista 
  2. Remover da Lista 
  3. Encerrar \n
  ''');
  return stdin.readLineSync()!;
}

class Queue<T> {
  List<T> _queue = [];

  insert(T value) {
    _queue.add(value);
  }

  T? remove() {
    return _queue.isNotEmpty ? _queue.removeAt(0) : null;
  }
}
