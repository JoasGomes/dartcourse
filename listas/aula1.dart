void main() {
  List<String> maluca = List.filled(100, 'joas');

  List<int> doida = List.generate(10, (i) => i * 10);

  print(doida);
  print(doida.isEmpty);
  print(doida.isNotEmpty);

  //remover na posição indicada
  doida.removeAt(0);
  print(doida);

  //verificar se é existe oq tem na condição (números divisíveis por 20)
  print(doida.any((element) => element % 20 == 0));

  //mostra o primeiro que der vdd na condição
  print(doida.firstWhere((element) => element == 10));

  //o último
  print(doida.lastWhere((element) => element == 30));

  //todos que satisfizerem a condição
  print(doida.where((element) => element % 40 == 0));

  //percorre todos os valores, usa a condição e retorna
  print(doida.map((e) => e + 1));

  // Tipos de listas

  //não poderá nulos
  List<String> lista1 = ['joas', 'vitor'];
  lista1.add('value');
  print(lista1);

  //poderá nulos mas não pode iniciar nula
  List<String?> lista2 = ['joas', 'vitor'];
  lista2.add(null);
  print(lista2);

  //pode ser e iniciar nula
  List<String>? lista3;

  if (lista3 != null) {
    lista3.add('value');
  }

  //pode ser e iniciar nula e adicionar nulos tbm
  List<String?>? lista4;

  if (lista4 != null) {
    lista4.add(null);
  }
}

/* int funcao(int pos) {
  return pos * 10;
} */
