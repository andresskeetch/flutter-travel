import 'package:flutter/material.dart';
import 'package:my_app/home_trips.dart';
import 'package:my_app/profile/profile_trips.dart';
import 'package:my_app/search_trips.dart';

class NavigationTrips extends StatefulWidget {
  const NavigationTrips({ Key? key }) : super(key: key);

  @override
  _NavigationTripsState createState() => _NavigationTripsState();
}

class _NavigationTripsState extends State<NavigationTrips> {

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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.black54),
          ),
        ),
        
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: onTapTapped,
          items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Home"
          ),
        ])),
    );
  }
}