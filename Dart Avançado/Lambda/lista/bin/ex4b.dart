void main() {
  List<int> lista = [7, 2, -1, 14, 50, 36, 13, 8, 21, 70, 20, 10, 66, 9, 12];
  final ultimoMaior = lista.lastWhere((element) => element > 50);
  print(ultimoMaior);
}
