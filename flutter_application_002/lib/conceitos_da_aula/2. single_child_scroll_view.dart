import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Conceito001(),
  ));
}

class Conceito001 extends StatelessWidget {
  build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(color: Colors.red),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(color: Colors.green),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
