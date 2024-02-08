import 'package:flutter/material.dart';
import 'home_page.dart';
import 'my_stepper.dart';
import 'add_task.dart';
import 'login.dart';
import 'tasks.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Navbar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MyStepper(),
    Add(),
    Tasks(),
    Login()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb),
              label: 'Proceso',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outlined),
              label: 'Añadir',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_circle),
              label: 'Tareas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2),
              label: 'Registro',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
