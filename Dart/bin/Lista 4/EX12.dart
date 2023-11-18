import 'dart:io';

void main() {
  
  double notas = 0;

  for( int contador = 1 ; contador <= 3 ; contador++ ){
    print('Informe a nota $contador:');
  notas += double.parse(stdin.readLineSync()!);
  }
  double media = notas/3;
  print('A Média é = ${media.toStringAsFixed(2)}');
}
