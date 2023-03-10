import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String mensagem = "Olá Mundo";

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mensagem),
            IconButton(
              onPressed: () {
                setState(() {
                  mensagem = "Você clicou no botão";
                });
                print(mensagem);
              },
              icon: const Icon(Icons.access_alarm),
            )
          ],
        ),
      ),
    );
  }
}
