import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DrawerTwitter extends StatelessWidget {
  const DrawerTwitter({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/images/user.png'),
                  width: 30,
                ),
                Icon(Ionicons.add_circle_outline)
              ],
            ),
            SizedBox(height: 20),
            Text('João da Silva', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('@joaosilva', style: TextStyle(color: Colors.grey.shade700)),
            SizedBox(height: 10),
            Row(
              children: [
                Text('500', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                SizedBox(width: 5),
                Text('Seguindo', style: TextStyle(fontSize: 12)),
                SizedBox(width: 10),
                Text('673', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                SizedBox(width: 5),
                Text('Seguidores', style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Ionicons.person_outline),
              minLeadingWidth: 30,
              title: Text('Perfil', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Ionicons.chatbubble_ellipses_outline),
              minLeadingWidth: 30,
              title: Text('Tópicos', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Ionicons.bookmark_outline),
              minLeadingWidth: 30,
              title: Text('Itens Salvos', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Ionicons.list_circle_outline),
              minLeadingWidth: 30,
              title: Text('Listas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
