void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = 'rex';
  cachorro1.idade = 3;
  cachorro1.dormir();
  cachorro1.comer();
  cachorro1.latir();

  Gato gato1 = Gato();
  gato1.nome = 'lua';
  gato1.idade = 3;
  gato1.dormir();
  gato1.comer();
  gato1.miar();

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
  String? nome;
  int? idade;

  void comer() {
    print('comeu');
  }

  void dormir() {
    print('dormiu');
  }
}

class Cachorro extends Animal {
  void latir() {
    print('latiu');
  }
}

class Gato extends Animal {
  void miar() {
    print('miou');
  }
}
