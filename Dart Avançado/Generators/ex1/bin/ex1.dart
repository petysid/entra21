import 'dart:io';

void main(List<String> args) {
  Iterable<int> values = tabuada(9);
  for (int num in values) {
    print(num);
  }
  print('FIM');
}

Iterable<int> tabuada(int num) sync* {
  for (int i = 1; i <= 10; i++) {
    yield i * num;
  }
}
