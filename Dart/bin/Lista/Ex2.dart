import 'dart:io';

void main() {
  
  List<int> listaNumeros = [];

  for(int i = 1; i <= 5; i++){
  print('Informe o número: $i');
  int numeros = int.parse(stdin.readLineSync()!);
  listaNumeros.add(numeros);
  }

  int somaNumeros = 0;
  for(int i = 0; i < listaNumeros.length; i++){
    print(listaNumeros[i]);
    somaNumeros += listaNumeros[i];
  }
  print('');
  print('A soma dos números é igual a: $somaNumeros');
}