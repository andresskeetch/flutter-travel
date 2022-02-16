import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({ Key? key }) : super(key: key);

  @override
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  
  bool isFavorite = false;
  void onPressedFav() {
      setState(() {
        isFavorite = !isFavorite;
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xff11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child:  Icon(isFavorite ? Icons.favorite: Icons.favorite_border),
    );
  }
}