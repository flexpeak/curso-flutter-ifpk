import 'package:flutter/material.dart';

/* Primeiramente mostrar sem o List generate */
class Home extends StatelessWidget {
  // parte 1
  // final contatos = ["Maria da Silva", "João Ferreira", "Alberto Mário", "Raimundo Pereira", "Renato Fonseca"];

  // parte 2
  final contatos = [
    {"id": "1", "nome": "Maria da Silva", "mensagem": "Me empresta um dinheiro?", "horario": "Agora"},
    {"id": "2", "nome": "João Ferreira", "mensagem": "Sua encomenda chegou", "horario": "13:50"},
    {"id": "3", "nome": "Alberto Mário", "mensagem": "Bom dia", "horario": "20:15"},
    {"id": "4", "nome": "Raimundo Pereira", "mensagem": "Obrigado", "horario": "Ontem"},
    {"id": "5", "nome": "Renato Fonseca", "mensagem": "Até amanhã", "horario": "Há dois dias"}
  ];

  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
        backgroundColor: Colors.green.shade900,
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: List.generate(contatos.length, (index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage("https://fakeface.rest/face/view?rand=" + contatos[index]['id']!),
                ),
                title: Text(contatos[index]["nome"]!),
                subtitle: Text(contatos[index]["mensagem"]!),
                trailing: Text(contatos[index]["horario"]!),
              ),
              Divider()
            ],
          );
        }),
      ),
      drawer: Drawer(),
    );
  }
}
