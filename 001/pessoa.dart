class Pessoa {
  String? nome;
  String? sobrenome;
  String? _nomeCompleto;

  Pessoa({required this.nome, this.sobrenome}) {
    _nomeCompleto = nome! + " " + (sobrenome ?? "Desconhecido");
  }

  nomeCompletoUsuario() {
    return _nomeCompleto;
  }
}
