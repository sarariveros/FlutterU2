import 'package:flutter/material.dart';

class ListTitle_Sara extends StatelessWidget {
  const ListTitle_Sara({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hardware'),
        elevation: 0,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.vertical_split_rounded),
              title: Text('Procesador'),
              subtitle: Text('Intel Core i7'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.videogame_asset_sharp),
              title: Text('Memoria RAM'),
              subtitle: Text('16 GB'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.screenshot_monitor_rounded),
              //leading: FlutterLogo(),
              title: Text('Monitor'),
              subtitle: Text('LG'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.mouse),
              title: Text('Mouse'),
              subtitle: Text('Logitech'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Teclado'),
              leading: Icon(Icons.keyboard),
              subtitle: Text('ENKORE GOSPEL'),
            ),
          ),
        ],
      ),
    );
  }
}
