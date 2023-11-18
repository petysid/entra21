void main() {
double resultado = calcula(10, (valor) => valor * 2);
print(resultado); // Exibe 20.0
}

double calcula(double valor, double Function(double numero) operacao) {
  return operacao(valor);
}


