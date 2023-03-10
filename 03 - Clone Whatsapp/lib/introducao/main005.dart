import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta o banner de debug
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: Text('Olá Mundo'),
        drawer: Drawer(), // Drawer adicionará um botão ao lado esquerdo da AppBar. Por enquanto vamos deixar vazio
      ),
    );
  }
}
