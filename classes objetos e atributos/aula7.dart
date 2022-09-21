void main() {
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'joas';
  pessoa1.idade = 20;
  print(pessoa1.nome);
  pessoa1.trocarNome('julio');
  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.casado);

  pessoa1.aniversario();
  print(pessoa1.idade);

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'vitor';
  pessoa2.idade = 30;
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);

  pessoa2.aniversario();
  print(pessoa2.idade);
}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false;

  void aniversario() {
    print('parabens! $nome');
    if (idade != null) {
      idade = idade! + 1;
    }
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }
}
