import 'package:flutter/material.dart';
import 'package:my_app/profile/button_action.dart';

Widget ProfileActions() {


  final actions = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ButtonAction(Icons.favorite), 
      ButtonAction(Icons.card_giftcard), 
      ButtonAction(Icons.add), 
      ButtonAction(Icons.mail_outline),
      ButtonAction(Icons.account_circle)
    ],
  );

  return Container(
    margin: const EdgeInsets.all(10.0),
    child: actions,
  );
}