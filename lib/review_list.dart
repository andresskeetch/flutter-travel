import 'package:flutter/material.dart';
import 'package:my_app/review.dart';

class ReviewList extends StatelessWidget {
  ReviewList(this.length,{ Key? key }) : super(key: key);

  int length = 5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(length,
       (index) => Review("Andres Gomez", "1 review 5 fotos", "")),
    );
  }
}