import 'package:flutter/material.dart';

import 'list_users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home:MyAppBody()
    );
  }
}

class MyAppBody extends StatefulWidget{
  const MyAppBody({super.key});
  // Oscar Ballard 202010604
  @override
  State<MyAppBody> createState() => _MyAppBoodyState();
}

class _MyAppBoodyState extends State<MyAppBody>{
  int _paginaActual = 0;
  List<Widget> paginas = [
    const PaginaPerfil(),
    const ListUser(),
    const PaginaMayorQue()
  ];

  final List<String> _title = [
    "The PlayList",
    "Personajes",
    "The PlayList"
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:  Text(_title[_paginaActual]),
        backgroundColor: Colors.black,
      ),
      body: paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        onTap:  (index){
          setState(() {
            _paginaActual = index; 
          });
        },
        currentIndex: _paginaActual,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Personajes"),
          BottomNavigationBarItem(icon: Icon(Icons.punch_clock_rounded), label: "Momentos"),
          // BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Acerca de"),
          // BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Mi vida"),
          // BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Contratame")
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



class PaginaMayorQue extends StatelessWidget {
  const PaginaMayorQue({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Text("3");
  }
}