import 'dart:io';

void main() {
  
  List<int> listaNumeros = [];
  int numeroInformado = 0;

  for(int i = 1; i <= 5; i++){
  print('Informe o número: $i');
  int numeros = int.parse(stdin.readLineSync()!);
  listaNumeros.add(numeros);
  if(numeros == 10){
    numeroInformado++;
  }
  }
  print('Foram informados o total de números 10: $numeroInformado');
}