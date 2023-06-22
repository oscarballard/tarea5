import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  final String imageUrl;
  final String name;

  const MyImage({super.key, required this.imageUrl,required this.name});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage(imageUrl),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
    // return CircleAvatar(
    //   radius: 70, // Image radius
    //   backgroundImage: AssetImage(imageUrl),
    // );
  }
}
