import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App em Arquivo Separado'),
      ),
      body: Container(color: Colors.red), // O container sempre vai ocupar o máximo de espaço que consegue
      drawer: Drawer(), // Drawer adicionará um botão ao lado esquerdo da AppBar. Por enquanto vamos deixar vazio
    );
  }
}
