void main() {
  Pessoa pessoa1 = Pessoa(nome: 'joas', idade: 20);
  pessoa1.aniversario();
  print(pessoa1.idade);

  Pessoa pessoa2 = Pessoa(nome: 'julio', idade: 30, casado: true);
  pessoa2.aniversario();
  print(pessoa2.idade);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 300000;
  print(pessoa1.dinheiro);
  print(pessoa2.dinheiro);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('criando o $nome com idade $idade');
  }

  String nome;
  int idade;
  bool casado = false;

  double? _dinheiro;

  int aniversario() {
    print('parabens! $nome');
    idade++;
    return idade;
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }

  set dinheiro(double? valor) {
    if (valor != null && valor >= 0 && valor < 1000000) {
      print('modificando o dinheiro de $nome');
      _dinheiro = valor;
    }
  }

  double? get dinheiro {
    print('lendo dinheiro do $nome');
    return _dinheiro;
  }
}
