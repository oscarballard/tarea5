import 'package:flutter/material.dart';

class ListMoment extends StatefulWidget {
  const ListMoment({super.key});

  @override
  State<ListMoment> createState() => _ListMomentState();
}

class _ListMomentState extends State<ListMoment> {
  final List<List<String>> momentos = [
    ['Andreas explota', "assets/images/daniel-ek.jpg", 'path'],
    ['Solucion del TCP/IP', "assets/images/andreas.webp", 'path'],
    ['Petra resuelve el gran dilema', "assets/images/petra.webp", 'path'],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: (momentos.length).ceil(),
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10), // Espacio vertical entre cada Row
            child: Row(
              children: [
                const SizedBox(
                    width:
                        25), // Espacio entre el primer SizedBox y el primer Row
                Container(
                  width: 100,
                  height: 100,
                  color: Colors
                      .grey, // Ajusta el color de fondo de la imagen cuadrada
                  child: Image.asset(momentos[index][1], fit: BoxFit.cover),
                ),
                const SizedBox(width: 25), // Espacio entre la imagen y el Text
                Row(
                  children: [
                    Text(
                      momentos[index][0],
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
