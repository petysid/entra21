import 'dart:io';

void main() {
  
  List<List> produtos = [
    ['Tênis', 'Nike', 299],
    ['Chuteira', 'Puma', 249],
    ['Mochila', 'Adidas', 119],
  ];
  for(int i = 0 ; i < produtos.length; i++){
    for(int j = 0 ; j < produtos[i].length; j++){
    print(produtos[i][j]);
    }
    print('');
  }
}