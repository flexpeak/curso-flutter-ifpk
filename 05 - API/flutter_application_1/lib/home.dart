import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(index: _selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Listar'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Novo'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Pesquisar'),
          BottomNavigationBarItem(icon: Icon(Icons.label), label: 'Categorias'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
