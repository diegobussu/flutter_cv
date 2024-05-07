import 'package:flutter/material.dart';
import 'profil.dart';
import 'competences.dart';
import 'formations.dart';
import 'informations.dart';
import 'experiences.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ProfilPage(),
    ExperiencesPage(),
    FormationsPage(),
    CompetencesPage(),
    InformationsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV BUSSU DIEGO'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Expériences',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Formations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Compétences',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Informations',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
