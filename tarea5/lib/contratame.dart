import 'package:flutter/material.dart';

class contratame extends StatelessWidget {
  const contratame({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 140,
            backgroundImage: AssetImage("assets/images/miPerfil.jpeg"),
          ),
        ),
        Expanded(
          child: Text(
            "Oscar Daniel ballard Suero",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        )
      ],
    );
    // return const Align(
    //     alignment: Alignment.center,
    //     child: Row(
    //       children: [
    //         Column(
    //           children: [
    //             CircleAvatar(
    //               radius: 140,
    //               backgroundImage: AssetImage("assets/images/miPerfil.jpeg"),
    //             ),
    //             Text("Hol")
    //           ],
    //         )
    //       ],
    //     ));
  }
}
