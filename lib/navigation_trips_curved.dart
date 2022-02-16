import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home_trips.dart';
import 'package:my_app/profile/profile_trips.dart';
import 'package:my_app/search_trips.dart';

class NavigationTripsCurved extends StatefulWidget {
  const NavigationTripsCurved({ Key? key }) : super(key: key);

  @override
  _NavigationTripsCurvedState createState() => _NavigationTripsCurvedState();
}

class _NavigationTripsCurvedState extends State<NavigationTripsCurved> {

  int _selectedIndex = 2;

   void onTapTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

 final List<Widget> widgetsChilden = [
     HomeTrips(),
     SearchTrips(),
     ProfileTrips()
   ];

  @override
  Widget build(BuildContext context) {


  

    return Scaffold(
      body: widgetsChilden[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Color(0xFF584CD1),
        backgroundColor: Colors.white,
        onTap: onTapTapped,
        items: const [
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.person),
        ],
      )
    );
  }
}