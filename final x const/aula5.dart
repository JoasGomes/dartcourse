void main() {
  //const

  const String nome = 'joás';
  //nome = 'vitor'; ===> erro
  print(nome);
  const int idade = 50 + 30;
  print(idade);

  const List<String> lista = ['joas', 'vitor'];
  //lista.add('value'); ===> erro
  print(lista);

  //final

  final String sobrenome = 'vitor';
  //sobrenome = 'paiva'; ===> erro

  final DateTime data = DateTime.now();

  print(sobrenome);
  print(data);

  final String carro;
  if (nome == 'joás') {
    carro = 'mustang';
  } else {
    carro = 'sei lá';
  }
  print(carro);
}
