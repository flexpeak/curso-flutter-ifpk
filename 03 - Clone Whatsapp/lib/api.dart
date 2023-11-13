import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/meu_appbar.dart';
import 'package:flutter_whatsapp/models/conversa.dart';
import 'package:http/http.dart' as http;

class Conversa {
  final int id;
  final String nome;
  final String conversa;
  final String hora;

  Conversa({required this.id, required this.nome, required this.conversa, required this.hora});

  factory Conversa.fromJson(Map<String, dynamic> json) {
    return Conversa(
      id: json['id'],
      nome: json['nome'],
      conversa: json['conversa'],
      hora: json['hora'],
    );
  }

  static fromJsonList(List<dynamic> json) {
    return json.map((e) => Conversa.fromJson(e)).toList();
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final List<Conversa> _conversas = [];

  void _fetchConversas() async {
    try {
      final response = await http.get(Uri.parse("https://my-json-server.typicode.com/flexpeak/conversas/conversas"));

      if (response.statusCode == 200) {
        // final conversaUnica = Conversa.fromJson(jsonDecode(response.body));
        // print(conversaUnica.id);

        final conversas = Conversa.fromJsonList(jsonDecode(response.body));
        setState(() {
          _conversas.addAll(conversas);
        });
      } else {
        throw Exception('Falha ao carregar conversas');
      }
    } catch (error) {
      print(error);
    } finally {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchConversas();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: MeuAppBar(),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  _conversas.length,
                  (index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://100k-faces.glitch.me/random-image?rand=${_conversas[index].id}'),
                        ),
                        title: Text(_conversas[index].nome),
                        subtitle: Text(_conversas[index].conversa),
                        trailing: Text(_conversas[index].hora),
                      ),
                      const Divider(
                        thickness: 1,
                        height: 5,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Center(
              child: Text('Status'),
            ),
            const Center(
              child: Text('Ligações'),
            ),
          ],
        ),
      ),
    );
  }
}
