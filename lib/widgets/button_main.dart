import 'package:flutter/material.dart';

Widget ButtonMain (BuildContext context,String text) {

  return Container(
     margin: const EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 20.0
      ),
    child: InkWell(
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Navegando")));
    },
    child: Container(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          color: Colors.white,
          
        ),
      ),
      alignment: Alignment.center,
    
      height: 50,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),

    ),
  ));
}