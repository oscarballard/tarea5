import 'package:flutter/material.dart';

import 'images.dart';

class ListUser extends StatefulWidget {
  const ListUser({super.key});
  
  @override
  State<ListUser> createState() => _ListUserState();
}

class _ListUserState extends State<ListUser>{
  final List<List<String>> personajes = [
    ['Daniel Ek', "assets/images/daniel-ek.jpg",'path'],
    ['Daniel Ek', "assets/images/daniel-ek.jpg",'path'],
    ['Daniel Ek', "assets/images/daniel-ek.jpg",'path'],
    ['Daniel Ek', "assets/images/daniel-ek.jpg",'path'],
    ['Daniel Ek', "assets/images/daniel-ek.jpg",'path'],
    ['Daniel Ek', "assets/images/daniel-ek.jpg",'path'],
  ];

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (personajes.length / 2).ceil(),
      itemBuilder:(BuildContext context, index) {
        int startIndex = index * 2;
        int endIndex = startIndex + 1;

        if (endIndex >= personajes.length) {
          endIndex = startIndex;
        }
        
        return Row(
          children: [
            Expanded(
              child: MyImage(imageUrl: personajes[startIndex][1],name: personajes[startIndex][0]),
            ),
            const SizedBox(width: 16), // Adjust the spacing between the images
            Expanded(
              child: endIndex < personajes.length
                  ? MyImage(imageUrl: personajes[startIndex][1],name: personajes[startIndex][0])
                  : Container(), // Empty container if there is no second image
            ),
          ],
        );
      }
    );
  }
  // Widget build(BuildContext context) {
  //   return const MyImage(imageUrl: "assets/images/daniel-ek.jpg",);
  // }
}