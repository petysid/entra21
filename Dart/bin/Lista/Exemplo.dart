import 'dart:io';

void main() {
  
  List nomes = ['Bia', 'Leo', 'Ana', 'Jim'];

  String nome = nomes[0];
  nomes[0] = 'Maria';
  int len = nomes.length;
  nomes.add('José');
  nomes.removeAt(0);
  nomes.remove('Leo');
}