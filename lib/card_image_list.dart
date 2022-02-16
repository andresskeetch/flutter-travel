import 'package:flutter/material.dart';
import 'package:my_app/card_image.dart';

Widget CardImageList() {


  return Container(
    height: 350,
    child: ListView(
      padding: EdgeInsets.all(25.0),
      scrollDirection: Axis.horizontal,
      children: List.generate(10, (index) => CardImage()),
    ),
  );
}