void main(List<String> args) {
  int numero = 12;
  print(numero.ePositivo());
  print(numero.eNegativo());
}

extension PositivoInt on int {
  bool ePositivo() {
    return this >= 0;
  }
}

extension NegativoInt on int {
  bool eNegativo() {
    return this < 0;
  }
}