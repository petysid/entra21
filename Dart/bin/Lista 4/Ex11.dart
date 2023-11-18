import 'dart:io';

void main() {

  int numero;
  int intervalo = 0;

  for(int contador = 1 ; contador < 11 ; contador++){
    print('Informe o número: $contador');
    numero = int.parse(stdin.readLineSync()!);
    if(numero >= 10 && numero <= 20){
      intervalo++;
    }
  }
  print('A quantidade de números entre 10 e 20 é: $intervalo números');
}