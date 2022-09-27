void main() {
  Cachorro cachorro1 = Cachorro('rex', 3);
  cachorro1.dormir();
  cachorro1.comer();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato('fluflu', 5);
  gato1.dormir();
  gato1.comer();
  gato1.miar();

  print(gato1);

  List<Cachorro> cachorros = [];
  List<Gato> gatos = [];
  List<Animal> animais = [];
  animais.add(cachorro1);
  animais.add(gato1);

  Animal animal1 = animais.first;
  if (animal1 is Cachorro) {
    animal1.latir();
  } else if (animal1 is Gato) {
    animal1.miar();
  }
}

class Animal {
  Animal(this.nome, this.idade);

  String nome;
  int idade;

  void comer() {
    print('comeu');
  }

  void dormir() {
    print('dormiu');
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade) {
    print('criou o cachorro: $nome');
  }

  void latir() {
    print('latiu');
  }

  void dormir() {
    super.dormir();
    print('dormiu e roncou muito');
  }

  @override
  String toString() {
    return 'Cachorro - Nome: $nome Idade: $idade';
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  void miar() {
    print('miou');
  }

  @override
  String toString() {
    return 'Gato - Nome: $nome Idade: $idade';
  }
}
