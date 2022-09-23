void main() {
  Pessoa pessoa1 = Pessoa.solteira(nome: 'joas', idade: 20);
  print(pessoa1.nome);
  pessoa1.trocarNome('julio');
  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.casado);

  pessoa1.aniversario();
  print(pessoa1.idade);

  Pessoa pessoa2 = Pessoa.casada(nome: 'julio', idade: 30);
  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);

  pessoa2.aniversario();
  print(pessoa2.idade);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade}) {
    print('criando o $nome com idade $idade');
  }
  Pessoa.casada({required this.nome, required this.idade}) {
    casado = true;
  }
  Pessoa.solteira({required this.nome, required this.idade}) {
    casado = false;
  }

  String nome;
  int idade;
  bool casado = false;

  int? aniversario() {
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
}
