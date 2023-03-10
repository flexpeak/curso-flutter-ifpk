import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int quantidade = 0;

  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Statefull Widget")),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Text('Você clicou no botão $quantidade vezes'),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              setState(() {
                quantidade = quantidade + 1;
              });
            }, child: Text('CLIQUE'))
          ]),
        ),
      ),
    );
  }
}