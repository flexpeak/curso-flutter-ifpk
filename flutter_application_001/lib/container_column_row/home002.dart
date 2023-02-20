import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entendendo Container'),
      ),
      body: Container(
        // O container ocupa o máximo de tamanho, a menos que seja estipulado um tamanho para ele
        // color: Colors.yellow, // Não pode usar color junto com decoration, pois eles se conflitam
        height: 300,
        width: 300,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(60),
        child: Text('Olá Mundo'),
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(10), // Não pode ter borderRadius se tiver shape
          color: Colors.yellow,
          image: DecorationImage(
            image: NetworkImage("https://www.google.com/images/branding/googlelogo/2x/googlelogo_light_color_92x30dp.png"),
          ),
          // shape: BoxShape.circle, // Não pode ter shape se tiver borderRadius
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(8, 10)
            )
          ]
        ),
      ),
      drawer: Drawer(), // Drawer adicionará um botão ao lado esquerdo da AppBar. Por enquanto vamos deixar vazio
    );
  }
}
