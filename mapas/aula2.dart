void main() {
  Map<int, String?> ddds = {
    11: 'sao paulo',
    19: 'campinas',
    41: 'curitiba',
    62: 'goias',
    49: null,
  };

  print(ddds[11]);
  print(ddds.length);

  ddds[61] = 'brasilia';

  print(ddds);

  //remove o item pela chave
  ddds.remove(49);
  print(ddds);
  //retorna valores do mapa
  print(ddds.values);
  //retorna as chaves do mapa
  print(ddds.keys);

  //verifica se a chave existe
  print(ddds.containsKey(50));
  //verifica se o valor existe
  print(ddds.containsValue('campinas'));

  //esta vazio?
  print(ddds.isEmpty);

  //nao esta vazio?
  print(ddds.isNotEmpty);

  //percorrer todos os valores e chaves
  ddds.forEach((key, value) {
    print('key $key Value $value');
  });

  //limpa todos os itens da lista
  //ddds.clear();

  //adiciona um conjunto
  ddds.addAll({90: 'cidade boa', 91: 'cidade ruim'});
  print(ddds);

  //remove com base na condição
  ddds.removeWhere((key, value) => key > 20);
  print(ddds);
}
