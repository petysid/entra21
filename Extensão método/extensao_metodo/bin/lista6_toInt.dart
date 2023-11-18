
void main(List<String> args){
  Real real = Real();
  real.valor = 10;
  print(real.toInt());
  print(real.paraString());
  print(real.paraStringasFixed(2));
  real.deString('152.000');
  print(real.valor);

  //Real real = Real(11); forma de fazer com construtor
}

class Real {
  double valor = 0;
}

extension MetodotoInt on Real {
   int toInt() {
    return valor.toInt();

    //Real(this.valor); forma de fazer com construtor
  }
}

extension MetodoString on Real {
  String paraString() {
    return valor.toString();
  }
}

extension MetodoStringFixed on Real {
  String paraStringasFixed(int digits) {
    return valor.toStringAsFixed(digits);
  }
}

extension MetododeString on Real {
  void deString(String value) {
    valor = double.parse(value);
  }
}