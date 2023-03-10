import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entendendo Row'),
      ),
      body: Row(
        // A Row adiciona vários widgets alinhados um ao lado do outro. A Row ocupa o máximo de tamanho possível
        // mainAxisAlignment: MainAxisAlignment.start, // Coloca todos os itens a esquerda, sem espaço entre eles (padrão)
        // mainAxisAlignment: MainAxisAlignment.center, // Coloca todos os itens centralizados, sem espaço entre eles
        // mainAxisAlignment: MainAxisAlignment.end, // Coloca todos os itens a direita, sem espaço entre eles
        // mainAxisAlignment: MainAxisAlignment.spaceAround, // Pega todo o espaço que sobrar na linha e distribui igualmente entre os elementos, deixando o espaço igual em toda a linha
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // O espaço é distribuido igualmente entre cada elemento adjacente, ou seja, um ao lado do outro, com exceção do primeiro e último.
        // mainAxisAlignment: MainAxisAlignment.spaceBetween, // O primeiro item é deslocado para o início do eixo principal, o último é deslocado para o final do eixo principal e os demais são distribuídos uniformemente entre eles
        // crossAxisAlignment: CrossAxisAlignment.center, // Coloca todos os itens centralizados (padrão) ocupando a altura necessária
        // crossAxisAlignment: CrossAxisAlignment.end, // Coloca todos os itens na parte de baixo ocupando a altura necessária
        // crossAxisAlignment: CrossAxisAlignment.start, // Coloca todos os itens na parte de cima ocupando a altura necessária
        // crossAxisAlignment: CrossAxisAlignment.stretch, // Coloca todos os itens ocupando o máximo de altura possível
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: 150,
            color: Colors.red,
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
