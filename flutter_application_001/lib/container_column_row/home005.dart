import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mistrando Row com Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: Colors.red,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.pink,
                height: 50,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 80,
                width: 90,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black,
                height: 60,
                width: 30,
              ),
              Container(
                color: Colors.blue,
                height: 150,
                width: 200,
              ),
              Container(
                color: Colors.brown,
                height: 120,
                width: 150,
              )
            ],
          )
        ],
      ),
      drawer: Drawer(),
    );
  }
}
