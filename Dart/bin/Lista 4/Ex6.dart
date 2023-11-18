import 'dart:io';

void main() {
  
print('Digite um número para tabuada, por favor:');
int numero = int.parse(stdin.readLineSync()!);

for( int contador = 1; contador <= 10 ; contador++){
  int tabuada = numero * contador;
  print('$numero x $contador = $tabuada.');
}
}