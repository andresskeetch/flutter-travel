import 'package:flutter/material.dart';
import 'package:my_app/profile/card_image.dart';
import 'package:my_app/gradient_back.dart';
import 'package:my_app/profile/profile_actions.dart';
import 'package:my_app/profile/profile_background.dart';
import 'package:my_app/profile/user_detail.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final container = Column(
      children: [   
        UserDetail("assets/img/traveler.jpeg", "Andres Gomez", "andres@gmail.com"),
        ProfileActions(), 
        CardImageList()],
    );

    final title = Container(
      margin: const EdgeInsets.only(
        top: 50,
        left: 20
      ),
      child: const Text(
        "Perfil",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return Stack(
      children: [
        ProfileBackground(),
        title,
        container
      ],
    );
  }
}