import 'dart:io';

void main() {
 
  List<String> listaNomes = [];
  String nomes = '';
  int qtdeNomes = 0;

  while(nomes.toUpperCase() != 'SAIR'){
    print('Informe um nome, por favor:');
    nomes = stdin.readLineSync()!;
    listaNomes.add(nomes.toUpperCase());
    }
  listaNomes.remove('SAIR');

    for(int i = 0; i < listaNomes.length; i++){
    print('Os nomes digitados são: ${listaNomes[i]}');
}
    print('O total de nomes é: ${listaNomes.length}');
}