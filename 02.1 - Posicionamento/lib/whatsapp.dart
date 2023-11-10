import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const WhatsAppUiClone(),
    debugShowCheckedModeBanner: false,
    title: 'WhatsApp',
    theme: ThemeData(
      primaryColor: const Color(0xff075E54),
    ),
  ));
}

class WhatsAppUiClone extends StatefulWidget {
  const WhatsAppUiClone({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WhatsAppUiClone createState() => _WhatsAppUiClone();
}

class _WhatsAppUiClone extends State<WhatsAppUiClone> {
  final List<Map<String, String>> _conversas = [
    {"id": "1", "nome": "Maria da Silva", "mensagem": "Me empresta um dinheiro?", "horario": "Agora"},
    {"id": "2", "nome": "João Ferreira", "mensagem": "Sua encomenda chegou", "horario": "13:50"},
    {"id": "3", "nome": "Alberto Mário", "mensagem": "Bom dia", "horario": "20:15"},
    {"id": "4", "nome": "Raimundo Pereira", "mensagem": "Obrigado", "horario": "09:40"},
    {"id": "5", "nome": "Renato Fonseca", "mensagem": "Até amanhã", "horario": "09:02"},
    {"id": "6", "nome": "Felipe Augusto", "mensagem": "Combinado!", "horario": "10:31"},
    {"id": "7", "nome": "Mãezinha", "mensagem": "Onde você está?", "horario": "10:33"},
    {"id": "8", "nome": "Roberta Miranda", "mensagem": "Magestade o sabiá", "horario": "11:11"},
    {"id": "9", "nome": "Mateus França", "mensagem": "Bom dia", "horario": "11:30"},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF25d366),
          child: const Icon(Icons.chat),
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('WhatsApp'),
          elevation: 0.7,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            )
          ],
          bottom: const TabBar(
            indicatorColor: Color(0xFF128C7E),
            indicatorWeight: 4,
            tabs: <Tab>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CONVERSAS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'LIGAÇÃO',
              )
            ],
          ),
        ),
        //new
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              _conversas.length,
              (index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://100k-faces.glitch.me/random-image?rand=$index"),
                    ),
                    title: Text(_conversas[index]["nome"]!),
                    subtitle: Text(_conversas[index]["mensagem"]!),
                    trailing: Text(_conversas[index]["horario"]!),
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
