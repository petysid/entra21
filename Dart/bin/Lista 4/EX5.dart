import 'dart:io';

void main() {
  print('Digite a senha');
  int contador = 1;
  int senha = 0;

  do {
    senha = int.parse(stdin.readLineSync()!);

    if(senha != 1234){
      print('Senha inválida');
    }

    contador++;
    if(senha == 1234){
      print('Senha correta.');
    }
  } while (contador <= 3 && senha != 1234);
  if(senha != 1234){
    print('Conta bloqueada');
  }
  }
  
