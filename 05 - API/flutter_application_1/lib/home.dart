import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void changeIndex(newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  carregarConfiguracoes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedIndex = prefs.getInt('abaInicial') ?? 0;
    });
  }

  @override
  void initState() {
    super.initState();
    carregarConfiguracoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: HomeBody(
            index: _selectedIndex,
            changeIndex: changeIndex,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Listar'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Novo'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Pesquisar'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configurações'),
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
