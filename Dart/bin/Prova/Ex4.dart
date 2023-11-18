import 'dart:io';

void main() {
  print('Informe o número do mês que deseja, por favor:');
  int numeroMes = int.parse(stdin.readLineSync()!);

  if(numeroMes == 2) {
    print('O mês têm 28 dias');
  } else if (numeroMes == 4 || numeroMes == 6 || numeroMes == 9 || numeroMes == 11) {
    print('O mês têm 30 dias');
  } else if (numeroMes <= 12) {
    print('O mês têm 31 dias');
  }
}