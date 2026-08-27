void main() {
  print('Hello World Dart UAU!');

  String texto = 'Calipsooo!';
  print(texto);

  bool logico = true;
  logico = false;
  print(logico);
  print(logico.runtimeType);

  int inteiro = 10;
  print(inteiro);

  num numerico = 10.9;
  print(numerico);

  double teste = 10.9;
  print(teste);

  Map<String, dynamic> hash = {'chave1': false, 'chave2': 89};
  print(hash['chave1']);

  List<String> array = [
    'Chimbinha',
    'Joelma',
    'Wesley Safadão',
    'Manoel Gomes',
  ];
  array.add('João Gomes');
  print(array);
  print(array[3]);

  for (int i = 0; i <= 10; i++) {
    print(i);
  }

  for (String element in array) {
    print(element);
  }

  int contador = 10;
  while (contador <= 10 && contador > 0 || contador != 20) {
    print(contador);
    contador--;
  }
}
