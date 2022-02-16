import 'package:flutter/material.dart';
import 'package:my_app/widgets/button_main.dart';
import 'package:my_app/widgets/star.dart';

class DescriptionPlace extends StatelessWidget {
  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars, {Key? key}) : super(key: key);

  String namePlace;
  int stars;
  String descriptionPlace;


  @override
  Widget build(BuildContext context) {

    final titleStars = Container(
      margin: const EdgeInsets.only(
        top: 320.0,
        left: 20.0,
        right: 20.0,
      ),
      child:   Row(
      children: <Widget>[
        Container(
          child:  Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        score(5, 3)
      ],
    ),
    );


    final description = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontFamily: "Lato",
        ),
        textAlign: TextAlign.left,
      ),
    );

    return Column( children: [titleStars, description, ButtonMain(context, "Navigate")],
    crossAxisAlignment: CrossAxisAlignment.start,);
  }
}