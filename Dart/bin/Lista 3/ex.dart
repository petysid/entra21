

import 'dart:io';

void main() {
  
  print('Informe um número');
  String num = stdin.readLineSync()!;
  print('O número digitado é: $num');
  int valor = int.parse(num);
  print('O número antecessor é: ${valor - 1}');
  print('O número sucessor é: ${valor + 1}');
}  


