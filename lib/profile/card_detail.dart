import 'package:flutter/material.dart';

Widget CardDetail (String title) {

  final titleCard = Text(title,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: "Lato",
      fontWeight: FontWeight.bold
    ),
  );

  final descriptionCard = Text(title,
   style: const TextStyle(
      color: Colors.black12,
      fontSize: 12,
      fontFamily: "Lato",
    ),
  );

    final stepsCard = Text(title,
   style: const TextStyle(
      color: Color.fromARGB(255, 243, 220, 117),
      fontSize: 14,
      fontFamily: "Lato",
      fontWeight: FontWeight.bold
    ),
  );

  return Container(
    width: 260,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      color: Colors.white
    ),
    child: Container(
      margin: const EdgeInsets.all(16),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleCard, descriptionCard, stepsCard],
    ),),
  );
}