

import 'dart:io';

void main() {
print('Informe o custo de fábrica');
double custoFabrica = double.parse(stdin.readLineSync()!);

double percDistribuidor = custoFabrica * 0.28;
double impostos = custoFabrica * 0.45;

double valorTotal = custoFabrica + percDistribuidor + impostos;
print('O valor total é: R\$ ${valorTotal.toStringAsFixed(2)}');
}