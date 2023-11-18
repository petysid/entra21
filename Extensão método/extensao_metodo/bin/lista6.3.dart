void main(){
  Colaborador colaborador1 = Colaborador();
  Colaborador colaborador2 = Colaborador();
  print(colaborador1.identificador);
  print(colaborador2.identificador);
}

class Colaborador {
 
  late int identificador = 0;
  static int contador = 0;

  Colaborador(){
    identificador = ++contador;
  }
}