import 'package:flutter/material.dart';

import 'acerca.dart';
import 'contratame.dart';
import 'list_momentos.dart';
import 'list_users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: MyAppBody());
  }
}

class MyAppBody extends StatefulWidget {
  const MyAppBody({super.key});
  // Oscar Ballard 202010604
  @override
  State<MyAppBody> createState() => _MyAppBoodyState();
}

class _MyAppBoodyState extends State<MyAppBody> {
  int _paginaActual = 0;
  int _paginaActual2 = 0;
  List<Widget> paginas = [
    const PaginaPerfil(),
    const ListUser(),
    const ListMoment(),
    const Acerca(),
    const contratame()
  ];


  final List<String> _title = [
    "The PlayList",
    "Personajes",
    "The PlayList",
    "",
    "",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title[_paginaActual2]),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              setState(() {
                _paginaActual2 = 3;
                _paginaActual = 0;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              setState(() {
                _paginaActual2 = 4;
                _paginaActual = 0;
              });
            },
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: paginas[_paginaActual2],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _paginaActual = index;
            _paginaActual2 = index;
          });
        },
        currentIndex: _paginaActual,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: "Personajes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.punch_clock_rounded), label: "Momentos"),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

class PaginaPerfil extends StatelessWidget {
  const PaginaPerfil({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Text("Hola");
  }
}
