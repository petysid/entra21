import 'dart:io';

void main() {

  List<int> listaNumeros = [];

  for(int i = 1; i <= 5; i++){
  print('Informe o número: $i');
  int numeros = int.parse(stdin.readLineSync()!);
  listaNumeros.add(numeros);
}
print('');
for(int i = listaNumeros.length-1 ; i >= 0 ; i--){
  print(listaNumeros[i]);
}
}