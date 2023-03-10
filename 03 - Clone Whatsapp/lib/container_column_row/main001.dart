import 'package:flutter/material.dart';
import 'package:flutter_application_001/container_column_row/home007.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta o banner de debug
      home: Home(),
    );
  }
}


