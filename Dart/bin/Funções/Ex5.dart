import 'dart:io';

void main() {
  print('Por favor, informe o raio do círculo:');
  double raio = double.parse(stdin.readLineSync()!);

    double diametro = calcular(raio);
    print('O diâmetro é $diametro');
}

double calcular(double raio){
  return raio * 2;
}