main() {
  trabalhandoComListas();
  trabalhandoComMap();
}

void trabalhandoComListas() {
  List nomes = ["João", "Maria", "Roberto"];
  print(nomes.length); // Retorna a quantidade de registros na List
  print(nomes.reversed); // Retorna a lista em ordem inversa
  nomes.add("Gustavo");
  print(nomes); // Adiciona um valor na List
  // nomes.clear(); // Exclui todos os valores da List
  print(nomes.contains("João")); // Verifica se o valor contém na List

  print(nomes.firstWhere((value) {
    return value.startsWith('M');
  })); // Retorna o primeiro registro que satisfaça uma verificação

  nomes.forEach((value) {
    print(value);
  }); // Executa uma função para cada valor da List

  for (var value in nomes) {
    print(value);
  } // Executa um bloco de código para cada valor da List

  print(nomes.map((value) {
    return value.toUpperCase();
  })); // Altera o valor de cada valor da List

  nomes.removeWhere((value) {
    return value.startsWith('R');
  });
  print(nomes); // Remove um valor da List que satisfaça uma verificação

  nomes.shuffle(); // Reordena a List
  print(nomes.take(2)); //Retorna uma quantidade específica da List
  print(nomes.where((value) {
    return value.endsWith('o');
  })); // Retorna todos os registros que satisfaçam uma verificação
}

void trabalhandoComMap() {
  Map pessoa = {"nome": "João", "idade": 22};

  print(pessoa["nome"]);

  List<Map> pessoas = [
    {"nome": "Maurício", "idade": 30},
    {"nome": "Roberta", "idade": 31}
  ];
  print(pessoas[0]["nome"]);
}
