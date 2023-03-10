import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            print("Apertou no Texto");
          },
          child: Text(
            'Aperte aqui',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
