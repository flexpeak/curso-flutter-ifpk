import 'package:flutter/material.dart';

class Pesquisar extends StatelessWidget {
  final Function changeIndex;
  const Pesquisar({super.key, required this.changeIndex});

  _showMyDialog(context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Página em desenvolvimento.'),
          content: const Text('Volte novamente em breve. Você será redirecionado à página inicial.'),
          actions: [
            TextButton(
              onPressed: () {
                changeIndex(0);
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => _showMyDialog(context));

    return Container();
  }
}
