import 'dart:io';

void main(List<String> args) {
  print('Informe a letra:');
  String letra = stdin.readLineSync()!;

  switch(letra) {
    case 'B':
    print('Blumenau');
    break;
    case 'I':
    print('Indaial');
    break;
    case 'G':
    print('Gaspar');
    break;
    case 'F':
    print('Florianópolis');
    break;
    default:
}
}