
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/listar.dart';

class HomeBody extends StatelessWidget {
  final int index; 
  const HomeBody({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0: return const Listar();
      case 1: return const Text('Novo');
      case 2: return const Text('Pesquisar');
      case 3: return const Text('Categorias');
    }
    return const Placeholder();
  }
}