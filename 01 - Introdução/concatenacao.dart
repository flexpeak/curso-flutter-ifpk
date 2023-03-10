main() {
  // String nome = "Adéliton";
  // String sobrenome = "Fernandes";

  // print("Bem-vindo, " + nome + " " + sobrenome);

  Map<String, Object?> endereco = {
    "rua": "A",
    "numero": 3,
    "complemento": null
  };

  print("Eu moro na rua " + endereco["rua"].toString() + " no número: " + endereco["numero"].toString());
}