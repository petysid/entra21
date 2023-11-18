import 'dart:io';

void main() {
  print('Informe o dia da semana, por favor:');
  String diaDaSemana = stdin.readLineSync()!;

  switch(diaDaSemana) {
    case '1':
    print('Domingo');
    break;
    case '2':
    print('Segunda-feira');
    break;
    case '3':
    print('Terça-feira');
    break;
    case '4':
    print('Quarta-feira');
    break;
    case '5':
    print('Quinta-feira');
    break;
    case '6':
    print('Sexta-feira');
    break;
    case '7':
    print('Sábado');
    break;
    default:
}
}