import 'dart:io';

void main() {

  int Humberto = 0;
  int Maria = 0;
  int Mario = 0;
  int Antonio = 0;

  String voto = '';
  
  while(voto != '5' ){
    print('Informe o número do candidato:');
    voto = stdin.readLineSync()!;
    switch(voto) {
      case '1':
      Humberto++;
      break;
      case '2':
      Maria++;
      break;
      case '3':
      Mario++;
      break;
      case '4':
      Antonio++;
      break;
      default:
      print('Número inválido, digite novamente. Humberto = 1, Maria = 2, Mário = 3, Antônio = 4.');
  }
}
    print('O resultado da votação é: \n Humberto = $Humberto \n Maria = $Maria \n Mario = $Mario \n Antonio = $Antonio');

if(Humberto > Maria && Humberto > Mario && Humberto > Antonio){
  print('Humberto está eleito');
}else if(Maria > Humberto && Maria > Mario && Maria > Antonio){
  print('Maria está eleita');
}else if(Mario > Humberto && Mario > Maria && Mario > Antonio){
  print('Mario está eleito');
}else if(Antonio > Humberto && Antonio > Maria && Antonio > Mario){
  print('Antonio está eleito');
  }else{
    print('Segundo turno');
  }
 }