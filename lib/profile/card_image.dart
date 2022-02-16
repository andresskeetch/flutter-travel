import 'package:flutter/material.dart';
import 'package:my_app/floating_action_button_green.dart';
import 'package:my_app/profile/card_base.dart';
import 'package:my_app/profile/card_detail.dart';

Widget CardImage() {

  final containerDetailCard = Stack(
    alignment: const Alignment(1, 2),
    children: [    
      CardDetail("Knuckles"),
      FloatingActionButtonGreen(),
    ],
  );
  return Container(
    margin: const EdgeInsets.only(
      bottom: 70,
    ),
    child:Stack(
    alignment: const Alignment(0, 2),
    children: [
      CardBase("assets/img/traveler.jpeg"),
      containerDetailCard
    ],
  ));
}

Widget CardImageList() {

  return Container(
    height: 545,
    child: ListView(
      padding: EdgeInsets.all(25.0),
      children: List.generate(10, (index) => CardImage()),
    ),
  ); 
}