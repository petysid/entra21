import 'dart:io';

void main() {
  List<int> listaNumeros = [];
  String numero = '0';

  while (numero != '') {
      print('Informe o número, por favor:');
      numero = stdin.readLineSync()!;
    
      if(numero != ''){
        int valor = int.parse(numero);
        listaNumeros.add(valor);
      }
    }
  
  for (int i = 0; i < listaNumeros.length; i++) {
    print('Os números digitados são: ${listaNumeros[i]}');
  }
  print('O total de números digitados são: ${listaNumeros.length}');
}
