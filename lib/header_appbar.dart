import 'package:flutter/material.dart';
import 'package:my_app/card_image_list.dart';
import 'package:my_app/gradient_back.dart';

Widget HeaderAppBar() {
  return Stack(
    children: [
      GradientBack("Popular"),
      CardImageList(),
    ],
  );
}