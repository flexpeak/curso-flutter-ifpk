main() {
  int idade = 20; 
  // String nome = "Adéliton";
  String nome2 = 'Adéliton'; 
  double peso = 78.903;
  List<int> idades = [10, 54, 34, 33];
  List<List<int>> numeros = [[8, 9, 10], [10, 5, 3]];
  bool sexoMasculino = true;
  Map<String, Object> infoPessoais = {
    "nome": "Adéliton",
    "idade": 20
  };

  String? nome = null;
  print("O valor de nome é " + nome!);

  String? sobrenome = null;
  String nomeCompleto = "Adéliton " + (sobrenome ?? 'Fernandes');

  print(idades[0]);
  print(infoPessoais['nome']);
  print(numeros[1][1]);
}