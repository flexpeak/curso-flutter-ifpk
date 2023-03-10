import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

// Registrar o pacote em pubspec.yaml

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Icon(Ionicons.add_circle_outline),
      ),
    ),
  );
}
