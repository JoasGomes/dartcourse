void main() {
  List<String> nomes = [];

  List<String> mod = nomes
    ..add('value')
    ..add('value2')
    ..remove('value');

  //sem o operador cascata
  nomes.add('joas');
  nomes.add('vitor');
  nomes.remove('joas');

  print(mod);
}
