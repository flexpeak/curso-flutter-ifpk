import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final contatos = [
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

  build(context) {
    return DefaultTabController(
      // Adicionado default tab controller
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          backgroundColor: Color(0xFF075E54), // Alterado a cor para hexadecimal
          foregroundColor: Colors.white,
          actions: [
            Icon(Icons.search), // Adicionado o icone de pesquisar
            SizedBox(width: 10), // Adicionado sized box
            IconButton(
                // Transformado em IconButton
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {}),
            SizedBox(width: 10), // Adicionado sized box
          ],
          bottom: TabBar(
            indicatorColor: Color(0xFF128C7E),
            tabs: [
              Tab(text: 'CHAMADAS'),
              Tab(text: 'CONVERSAS'),
              Tab(text: 'STATUS'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          // Adicionado single child scroll view
          child: Column(
            children: List.generate(contatos.length, (index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      // backgroundColor: Colors.grey, // Não precisa de background se tiver imagem
                      backgroundImage: NetworkImage("https://fakeface.rest/face/view?rand=" + contatos[index]['id']!),
                    ),
                    title: Text(
                      contatos[index]["nome"]!,
                      style: TextStyle(fontWeight: FontWeight.w500), // Adicionando estilo na fonte
                    ),
                    subtitle: Text(contatos[index]["mensagem"]!),
                    trailing: Text(
                      contatos[index]["horario"]!,
                      style: TextStyle(color: Colors.grey), // Estilizando textos
                    ),
                  ),
                  Divider()
                ],
              );
            }),
          ),
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF075E54),
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}
