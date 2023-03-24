
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/configuracoes.dart';
import 'package:flutter_application_1/pages/listar.dart';
import 'package:flutter_application_1/pages/novo.dart';
import 'package:flutter_application_1/pages/pesquisar.dart';

class HomeBody extends StatelessWidget {
  final int index; 
  final Function changeIndex;
  const HomeBody({super.key, required this.index, required this.changeIndex});

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0: return const Listar();
      case 1: return Novo(changeIndex: changeIndex);
      case 2: return Pesquisar(changeIndex: changeIndex);
      case 3: return const Configuracoes();
    }
    return const Placeholder();
  }
}