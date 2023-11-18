import 'dart:io';

void main() {
  
  List<String> cardapioDescricao = [
    'x-salada', 
    'batata',
    'cuca',
    'pão seco',
    'pão dormido',
    'pão azedo',
    'pão com linguiça',
    'pão com ovo',
    'pão com epa',
    'pão com pão'
  ];

  List<double> cardapioValor = [10,20,17,5,5,5,5,5,5,5];
  List<String> itensPedidoDescricao = [];
  List<double> itensPedidoValor = [];

  int codigo = 0;
  while(codigo != 11){
    exibirCardapio(cardapioDescricao, cardapioValor);
    codigo = int.parse(stdin.readLineSync()!);
    
    if(codigo >= 1 && codigo <= cardapioDescricao.length){
      int indice = codigo-1;
      itensPedidoDescricao.add( cardapioDescricao[indice] );
      itensPedidoValor.add( cardapioValor[indice] );
    }else if(codigo != 11){
      print('Código inválido');
    }
  }

  // Exibir os ítens do pedido
  print('Itens do pedido:');
  double valorTotal = 0;
  for(int i = 0 ; i < itensPedidoDescricao.length ; i++){
    print(itensPedidoDescricao[i]);
    valorTotal += itensPedidoValor[i];
  }
  print('Total da compra: R\$ ${valorTotal.toStringAsFixed(2)}');
}

exibirCardapio(List<String> cardapioDescricao, List<double> cardapioValor){
  print('Cardápio:');
  for(int i = 0 ; i < cardapioDescricao.length ; i++){
    print('${i+1} - ${cardapioDescricao[i]} R\$ ${cardapioValor[i].toStringAsFixed(2)}');
  }
}