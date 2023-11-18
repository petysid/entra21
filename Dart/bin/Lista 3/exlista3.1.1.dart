

import 'dart:io';

void main() {
print('Informe o custo de fábrica');
double custoFabrica = double.parse(stdin.readLineSync()!);

double impostos = 0.28 + 0.45;
double valorTotal = custoFabrica + (custoFabrica * impostos);
print('O valor total é: R\$ ${valorTotal.toStringAsFixed(2)}');
}