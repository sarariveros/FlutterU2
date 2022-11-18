import 'package:flutter/material.dart';
import 'package:sesion_3_1/sesion8/screens/amigosPage.dart';
import 'package:sesion_3_1/sesion8/screens/bandejaPage.dart';
import 'package:sesion_3_1/sesion8/screens/homePage.dart';

class Home8 extends StatefulWidget {
  const Home8({super.key});

  @override
  State<Home8> createState() => _Home8State();
}

class _Home8State extends State<Home8> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOpcions = [
    HomePage(),
    AmigosPage(),
    BandejaPage(),
    Text('data4'),
    Text('data5'),
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOpcions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/05/23/00/21/woman-6274879_960_720.png'),
                radius: 15,
              ),
              label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
