import 'models/casamento.dart';
import 'models/pessoa.dart';
import 'models/relacionamento.dart';

void main() {
  print('POO UAU');

  Pessoa jose = Pessoa(nome: 'José', estadoCivil: 'Solteiro', idade: 19);
  Pessoa maria = Pessoa(nome: 'Maria', estadoCivil: 'Solteiro', idade: 20);

  Relacionamento namoro = Relacionamento(
    dataFinal: '30/10/2016',
    pessoas: [jose, maria],
  );
  print(namoro.inicia(dataInicial: '01/01/0001'));

  Casamento casamento = Casamento(
    pessoas: [jose, maria],
    dataFinal: null,
    dataCasamento: '01/01/0002',
  );
  print(casamento.pessoas.first.nome);
}
