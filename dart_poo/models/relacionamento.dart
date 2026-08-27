import 'pessoa.dart';

class Relacionamento {
  Relacionamento({required this.pessoas, required this.dataFinal});

  List<Pessoa> pessoas;
  late String _dataInicial;
  String? dataFinal;

  bool inicia({required String dataInicial}) {
    if (!pessoas.any((pessoa) => pessoa.estadoCivil != 'Solteiro')) {
      _dataInicial = dataInicial;
      print('E uma nova história se inicia em $_dataInicial');
      return true;
    }
    return false;
  }
}
