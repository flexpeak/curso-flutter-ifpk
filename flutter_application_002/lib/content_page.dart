import 'package:flutter/material.dart';
import 'package:flutter_application_002/posts.dart';

class ContentPage extends StatelessWidget {
  final int index;

  ContentPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Posts();
    } else if (index == 1) {
      return Center(child: Text('Pesquisar'));
    } else if (index == 2) {
      return Center(child: Text('Notificações'));
    } else {
      return Center(child: Text('Mensagens'));
    }
  }
}
