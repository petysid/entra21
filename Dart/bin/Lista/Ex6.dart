import 'dart:io';

void main() {
  List<int> listaNumeros = [];

  for (int i = 1; i <= 8; i++) {
    print('Informe o número: $i');
    int numeros = int.parse(stdin.readLineSync()!);
    listaNumeros.add(numeros);
  }
  print('');
  int somaNumeros = 0;
  int menorNumero = listaNumeros[0];
  int maiorNumero = listaNumeros[0];

  for (int i = 0; i < listaNumeros.length; i++) {
    print(listaNumeros[i]);
    somaNumeros += listaNumeros[i];

    if (listaNumeros[i] < menorNumero) {
      menorNumero = listaNumeros[i];
    }
    if (listaNumeros[i] > maiorNumero) {
      maiorNumero = listaNumeros[i];
    }
  }
  double media = somaNumeros / listaNumeros.length;
  print('');
  print('A soma dos números é igual a: $somaNumeros');
  print('O menor número é igual a: $menorNumero');
  print('O maior número é igual a: $maiorNumero');
  print('A média dos números é igual a: $media');
}
