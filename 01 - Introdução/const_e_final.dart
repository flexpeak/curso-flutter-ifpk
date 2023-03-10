main() {
  const double PI = 3.141592;
  final List<int> teste = [1, 2, 3, 4];
  teste.add(12); // isso é possível
  print(teste); // isso também é possível

  final List<int> teste2 = const [1, 2, 3, 4];
  teste.add(12); // isso é não é possível, por que a lista é constante
  print(teste); // isso também é possível

  const List<int> teste3 = [1, 2, 3, 4, 5];
  teste2.add(12); // isso não é possível, por que é constante

  final nome = null;
}