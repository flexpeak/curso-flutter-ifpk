import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/detalhes.dart';
import 'package:http/http.dart' as http;

class Listar extends StatefulWidget {
  const Listar({super.key});

  @override
  State<Listar> createState() => _ListarState();
}

class _ListarState extends State<Listar> {
  bool _isLoading = false;
  List _produtos = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {

    setState(() {
      _isLoading = true;
    });

    final response = await http.get(Uri.parse("https://dummyjson.com/products"));
    if (!mounted) return;
    setState(() {
      _produtos = jsonDecode(response.body)['products'];
    });

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: !_isLoading
            ? Wrap(
                children: List.generate(_produtos.length, (index) {
                  return SingleProduct(produto: _produtos[index]);
                }),
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final Map produto;

  const SingleProduct({
    super.key,
    required this.produto,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;

    return Container(
        width: (width / 2) - 20,
        constraints: const BoxConstraints(minHeight: 200, maxHeight: 250),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              produto['title'],
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Hero(
              tag: "thumbnail_${produto['id']}",
              child: Image.network(
                produto['thumbnail'],
                height: 100,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Text(
                produto['description'],
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detalhes(produto: produto),
                        ),
                      );
                    },
                    child: const Text('DETALHES', style: TextStyle(fontSize: 12))),
                TextButton(onPressed: () {}, child: const Text('COMPRAR', style: TextStyle(fontSize: 12))),
              ],
            )
          ],
        ));
  }
}
