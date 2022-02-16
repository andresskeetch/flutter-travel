import 'package:flutter/material.dart';

Widget start (bool onlyBorder) {
  return Container(
      margin: const EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        onlyBorder ? Icons.star_border: Icons.star,
        
        color: Color(0xFFf2C611),
      ),
  );
}

Widget score (int totalStars, int score) {
  return Row(
      children: List.generate(totalStars, (index) {
          return start(score < index + 1);
        }),
  );

}