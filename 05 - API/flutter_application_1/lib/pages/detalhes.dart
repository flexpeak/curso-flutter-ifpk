import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  final dynamic produto;
  const Detalhes({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(produto['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: "thumbnail_${produto['id']}",
              child: Image.network(produto['thumbnail'], width: double.infinity, fit: BoxFit.fill),
            ),
            Text(produto['title']),
            Text(produto['description']),
            Text(produto['price'].toString()),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(produto['images'].length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.network(produto['images'][index], width: width / 3),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
