import 'dart:io';

void main() {
  const sair = 'SAIR';

  int idades = 0;
  int qtdePessoas = 0;
  String valor = '';
  
  while(valor.toUpperCase() != 'SAIR'){
    print('Informe a idade:');
    valor = stdin.readLineSync()!;
    if(valor.toUpperCase() != sair){
      idades += int.parse(valor);
      qtdePessoas++;
    }
  }

  double media = idades/qtdePessoas;
    print('A média de idades é: ${media.toInt()} para $qtdePessoas pessoas');
}