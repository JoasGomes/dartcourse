void main() {
  Movel movel1 = Pessoa();
  movel1.frente();
  movel1.direita();
  movel1.esquerda();

  Vendivel vend1 = Geladeira();
  print(vend1.preco());
}

class Geladeira implements Vendivel {
  double preco() {
    return 1000;
  }
}

class Pessoa implements Movel {
  String? nome;

  void frente() {}
  void esquerda() {}
  void direita() {}
}

class Carro implements Movel, Vendivel {
  String? modelo;

  double preco() {
    return 50000;
  }

  void frente() {}
  void esquerda() {}
  void direita() {}
}

abstract class Movel {
  void frente();
  void esquerda();
  void direita();
}

abstract class Vendivel {
  double preco();
}
