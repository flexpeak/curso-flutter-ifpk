
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/listar.dart';
import 'package:flutter_application_1/pages/novo.dart';

class HomeBody extends StatelessWidget {
  final int index; 
  final Function changeIndex;
  const HomeBody({super.key, required this.index, required this.changeIndex});

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0: return const Listar();
      case 1: return Novo(changeIndex: changeIndex);
      case 2: return const Text('Pesquisar');
      case 3: return const Text('Categorias');
    }
    return const Placeholder();
  }
}