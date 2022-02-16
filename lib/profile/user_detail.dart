import 'package:flutter/material.dart';

const borderPhoto = BorderSide(color: Colors.white, width: 2, style: BorderStyle.solid);

Widget UserDetail(String pathImage, String name, String email) {

 final photo = Container(
        width: 80.0,
        height: 80.0,
        
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: const Border(
            bottom: borderPhoto,
            top: borderPhoto,
            left: borderPhoto,
            right: borderPhoto,
          ),
          image: DecorationImage(image:  AssetImage(pathImage), fit: BoxFit.cover),
        ),
      ); 

  final userName = Text(name, 
     style: const TextStyle(
       fontSize: 18.0,
       fontFamily: "Lato",
       fontWeight: FontWeight.bold,
       color: Color.fromARGB(255, 214, 212, 212),
     ),
    );

final userEmail = Text(email, 
  style: const TextStyle(
      fontSize: 14.0,
      fontFamily: "Lato",
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 129, 129, 129),
    ),
  );

  final userInfo = Container(
    margin: EdgeInsets.only(
      left: 20,
      top: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userEmail,
      ],
  ),);

  return Container(
    alignment: Alignment.topLeft,
    margin: const EdgeInsets.only(
        top: 100.0,
        left: 20.0,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        photo,
        userInfo,
      ],
    ),
  );
}