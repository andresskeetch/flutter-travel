
import 'package:flutter/material.dart';
import 'package:my_app/floating_action_button_green.dart';

Widget CardImage({String pathImage = "assets/img/traveler.jpeg",})  {

  final card = Container(
    height: 350.0,
    width: 250.0,
    margin: const EdgeInsets.only(
      top: 80.0,
      left: 20.0
    ),
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(pathImage)
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      shape: BoxShape.rectangle,
      boxShadow: const [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 15.0,
          offset: Offset(0.0, 7.0)
        )
      ]
    ),
  );
  
  return Stack(
    alignment: const Alignment(0.9, 1.1),
    children: [
      card,
      FloatingActionButtonGreen(),
    ],
  );
}