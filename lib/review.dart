import 'package:flutter/material.dart';
import 'package:my_app/widgets/star.dart';

class Review extends StatelessWidget {
  Review(this.name, this.details, this.comment, { Key? key }) : super(key: key);

  String name = "Andres";
  String path = "assets/img/traveler.jpeg";
  String details = "1 review 5 fotos";
  String comment = "comment";

  @override
  Widget build(BuildContext context) {

    
      final photo = Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
        ),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image:  AssetImage(path), fit: BoxFit.cover),
        ),
      ); 

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name, textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"
        ),),
      ); 

    final userDetail =  Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details, textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
        ),
        ),
      
      );

    final userDetailContainer = Row(
      children: [userDetail, score(5, 4)],
    );
    
 
   
    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment, textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900
        ),
        ),
      
      );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userDetailContainer,
        userComment
      ],
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}