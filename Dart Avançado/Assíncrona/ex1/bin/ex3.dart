void main() {
  minhaFuncao(() {
    print('Chamaaa');
  });
}

minhaFuncao(void Function() callback) async {
  await Future.delayed(const Duration(seconds: 1));
  callback();
}
