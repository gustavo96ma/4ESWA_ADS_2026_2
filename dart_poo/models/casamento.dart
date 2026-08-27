import 'relacionamento.dart';

class Casamento extends Relacionamento {
  Casamento({
    required super.pessoas,
    required super.dataFinal,
    required this.dataCasamento,
  });

  String dataCasamento;
}
