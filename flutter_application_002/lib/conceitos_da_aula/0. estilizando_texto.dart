import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vulputate, tellus quis semper dictum, sapien felis auctor leo, nec suscipit odio tortor sed erat.',
        textAlign: TextAlign.center, // Altera o alinhamento do texto
        overflow: TextOverflow.ellipsis, // Corta o texto no final e põe reticências
        style: TextStyle(
          fontSize: 30, // Altera o tamanho da fonte
          color: Colors.brown, // Altera a cor do texto
          backgroundColor: Colors.yellow, // Põe uma cor de background
          fontWeight: FontWeight.bold, // Altera o peso da fonte. Por exemplo, colocar negrito
          fontStyle: FontStyle.italic, // Altera o estilo da fonte. Por exemplo, colocar itálico
          letterSpacing: 2, // Altera o espaçamento entre as letras
          wordSpacing: 5, // Altera o espaçamento entre as palavras
          decoration: TextDecoration.underline, // Altera a decoração do texto. Por exemplo, colocar sublinhado
          fontFamily: 'Arial' // Altera a fonte do texto
        ),
      ),
    );
  }
}
