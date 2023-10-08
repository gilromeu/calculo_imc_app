class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  @override
  String toString() {
    return 'Nome: $nome, Peso: $peso, Altura: $altura';
  }
}
