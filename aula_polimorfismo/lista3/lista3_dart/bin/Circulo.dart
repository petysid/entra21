
import 'dart:math';

import 'forma_geometrica.dart';

class Circulo implements FormaGeometrica {

  double raio;

  Circulo({required this.raio});

  @override
  double calcPerimetro() {
    return pi * pow(raio, 2);
  }

  @override
  double calcArea() {
   return pi * raio;
  }
}