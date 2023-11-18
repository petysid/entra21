import 'dart:io';

void main() {
  
  int numerosPares = 0;
  int numerosImpares = 0;

for(int contador = 1 ; contador < 11 ; contador++){
  print('Informe o número: $contador');
  int numero = int.parse(stdin.readLineSync()!);
  if(numero % 2 == 0){
    numerosPares++;
  } else {
    numerosImpares++;
  }
  }
  print('$numerosPares Números pares. $numerosImpares Números ímpares');
}