import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const Text('Olá mundo'),
        appBar: AppBar(
          title: const Text('Meu Aplicativo'),
        ),
        drawer: const Drawer(),
      ),
    ),
  );
}
