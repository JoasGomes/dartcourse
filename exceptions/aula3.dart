void main() {
  int resultado = 100 ~/ 7;
  int resto = 100 % 7;
  print(resultado);
  print(resto);

  try {
    int resultadoErrado = 100 ~/ 0;
    print(resultadoErrado);

    double valor = double.parse('50.2a');
    print(valor);
  } on UnsupportedError {
    print('caiu aqui');
  } on FormatException catch (e) {
    print('caiu no format exception ${e.message}');
  } catch (e) {
    print(e);
  } finally {
    print('vai executar de qualquer maneira');
  }
  print('final');

  try {
    funcao(-1);
  } catch (e) {
    print(e);
  }
}

void funcao(int x) {
  if (x <= 0) {
    throw VoceEstaFazendoBesteira();
  }
  print(x);
}

class VoceEstaFazendoBesteira implements Exception {
  String toString() {
    return 'Você não pode passar um valor menor igual a 0';
  }
}
