import 'package:flutter/material.dart';

Widget ButtonAction(IconData icon) {

  return FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      tooltip: 'Fav',
      onPressed: () {},
      child:  Icon(icon, color: Colors.black45),
    );
}