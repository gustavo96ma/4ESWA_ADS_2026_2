# Programação para Dispositivos Móveis — 4º ADS + 4º ESW A — 2026/2

Repositório com o material desenvolvido em sala nas aulas de Programação para Dispositivos Móveis do segundo semestre de 2026.

Professor: Me. Gustavo Meneghetti Arcolezi
Instituição: UNICIVE — Maringá/PR

## Como usar este repositório

Cada pasta corresponde a uma aula ou a um tema trabalhado em sala. As pastas nomeadas no formato `DD-MM` são as aulas datadas; as demais agrupam exercícios por assunto. Dentro de cada uma está o código como ele ficou ao fim do encontro.

Para rodar os projetos você precisa do SDK do Dart e, nos projetos Flutter, do SDK do Flutter instalado. Confira sua instalação com `flutter doctor` antes de abrir qualquer projeto — a maior parte dos problemas que aparecem no começo do semestre é ambiente mal configurado, não erro de código.

Nos projetos Dart puro, entre na pasta e rode:

```bash
dart run
```

Nos projetos Flutter, entre na pasta e rode:

```bash
flutter pub get
flutter run
```

## Aulas e exercícios

### `hello_world_dart` — Primeiro programa em Dart

Projeto inicial da disciplina. Estrutura de um pacote Dart (`pubspec.yaml`, pasta `bin/`, ponto de entrada `main`), execução pelo terminal e primeiros contatos com a sintaxe da linguagem.

### `dart_poo` — Programação orientada a objetos em Dart

Exercício de modelagem com classes, herança e composição. O domínio é o de relacionamentos entre pessoas:

- `Pessoa` — a entidade básica, com nome, idade e estado civil.
- `Relacionamento` — agrega uma lista de pessoas e tem data de início e de término.
- `Casamento` — estende `Relacionamento`, acrescentando a data do casamento.

O ponto do exercício é enxergar que `Casamento` é um tipo de `Relacionamento` e por isso herda dele, em vez de duplicar os campos. Repare também no uso de parâmetros nomeados (`{required this.nome}`) — em Dart eles são a forma idiomática de construir objetos com vários campos, porque deixam a chamada legível sem depender da ordem dos argumentos.

### 18-08 — Exercício em sala

Atividade avaliativa realizada durante a aula.

### 20-08 — `hello_world_again`: primeiro app Flutter

Transição do Dart puro para o Flutter. Criação do projeto, estrutura de pastas (`lib/`, `web/`, `pubspec.yaml`) e o ponto de entrada `main.dart`. Nesta aula o app inteiro cabe no `main.dart`: montamos a árvore de widgets com `MaterialApp`, `Scaffold`, `Center`, `Column`, `Text` e `TextButton`, e discutimos o que é um `StatelessWidget`.

### 25-08 — `hello_world_again`: navegação entre telas

Evolução do mesmo projeto, agora com mais de uma tela. A pasta `lib/screens/` passa a conter `home_page.dart` e `product_page.dart`, e trabalhamos a navegação entre elas com `Navigator.of(context).push` e `MaterialPageRoute`. Também apareceram a `AppBar` dentro do `Scaffold` e a estilização de botões com `ButtonStyle` e `WidgetStatePropertyAll`.

Separar cada tela em seu próprio arquivo dentro de `lib/screens/` não é exigência do Flutter — o app funcionaria com tudo no `main.dart`, como na aula anterior. É convenção de organização, e ela começa a fazer diferença assim que o projeto passa de duas ou três telas.

## Referências

- [Documentação oficial do Dart](https://dart.dev/guides)
- [Documentação oficial do Flutter](https://docs.flutter.dev/)
- [Flutter — Navegação e rotas](https://docs.flutter.dev/ui/navigation)
