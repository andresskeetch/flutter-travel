import 'package:flutter/material.dart';

Widget CardBase(String pathImage) {
    return  Container(
    height: 180.0,
    width: 300.0,
    margin: const EdgeInsets.only(
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
  
}