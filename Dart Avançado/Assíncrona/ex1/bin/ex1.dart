void main() async {
  await contar();
  print('Fim');
}

contar() async {
  for (int contador = 1; contador < 11; contador++) {
    print(contador);
    await Future.delayed(const Duration(seconds: 1));
  }
}
