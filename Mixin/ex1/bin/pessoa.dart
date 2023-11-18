import 'boxe.dart';
import 'cantar.dart';
import 'dancar.dart';
import 'escrita.dart';
import 'exercicio.dart';
import 'leitura.dart';

abstract class Pessoa {
  late String nome;
}

class Artista extends Pessoa with Cantar , Dancar {
  @override
  void canta(String letra) {
  }
  @override
  void danca(int passos) {
  }
}

class Engenheiro extends Pessoa with Escrita , Leitura {
  @override
  void escrever(String texto) {
  }
  @override
  void ler(String topico) {
  }
}

class Atleta extends Pessoa with Exercicio {
  @override
  void correr(double km) {
  }
  @override
  void levantarPeso(double kg) {
  }
}

class Lutador extends Pessoa with Boxe {
  @override
  void soco(int nSocos) {
  }
}

class Compositor extends Pessoa with Cantar, Escrita, Leitura {
  @override
  void canta(String letra) {
  }
  @override
  void escrever(String texto) {
  }
  @override
  void ler(String topico) {
  }
}

class Seguranca extends Pessoa with Boxe, Exercicio {
  @override
  void correr(double km) {
  }
  @override
  void levantarPeso(double kg) {
  }
  @override
  void soco(int nSocos) {
  }
}


