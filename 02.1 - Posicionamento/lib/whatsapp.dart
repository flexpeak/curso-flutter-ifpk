import 'package:flutter/material.dart';

class Whatsapp extends StatelessWidget {
  final List<Map<String, String>> conversas = [
    {
      "id": "1",
      "nome": "Maria da Silva",
      "mensagem": "Me empresta um dinheiro?",
      "horario": "Agora"
    },
    {
      "id": "2",
      "nome": "João Ferreira",
      "mensagem": "Sua encomenda chegou",
      "horario": "13:50"
    },
    {
      "id": "3",
      "nome": "Alberto Mário",
      "mensagem": "Bom dia",
      "horario": "20:15"
    },
    {
      "id": "4",
      "nome": "Raimundo Pereira",
      "mensagem": "Obrigado",
      "horario": "09:40"
    },
    {
      "id": "5",
      "nome": "Renato Fonseca",
      "mensagem": "Até amanhã",
      "horario": "09:02"
    },
    {
      "id": "6",
      "nome": "Felipe Augusto",
      "mensagem": "Combinado!",
      "horario": "10:31"
    },
    {
      "id": "7",
      "nome": "Mãezinha",
      "mensagem": "Onde você está?",
      "horario": "10:33"
    },
    {
      "id": "8",
      "nome": "Roberta Miranda",
      "mensagem": "Magestade o sabiá",
      "horario": "11:11"
    },
    {
      "id": "9",
      "nome": "Mateus França",
      "mensagem": "Bom dia",
      "horario": "11:30"
    },
  ];

  Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Drawer(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF075E54),
            child: const Icon(Icons.chat)),
        appBar: AppBar(
          title: const Text('Whatsapp'),
          backgroundColor: const Color(0xFF075E54),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            // Icon(Icons.more_vert),
            IconButton(
              onPressed: () {
                print("Clicou no mais opções");
              },
              icon: const Icon(Icons.more_vert),
            ),
            const SizedBox(width: 10)
          ],
          bottom: const TabBar(
              indicatorColor: Color(0xFF128C7E),
              indicatorWeight: 4,
              tabs: [
                Tab(text: 'Conversas'),
                Tab(text: 'Status'),
                Tab(text: 'Chamadas'),
              ]),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: List.generate(
            conversas.length,
            (index) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://fakeface.rest/face/view?rand=" +
                            conversas[index]["id"]!),
                  ),
                  title: Text(conversas[index]["nome"]!),
                  subtitle: Text(conversas[index]["mensagem"]!),
                  trailing: Text(conversas[index]["horario"]!),
                ),
                const Divider(
                  thickness: 1,
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
