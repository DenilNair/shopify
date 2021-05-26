

import 'package:flutter/material.dart';
import 'currNavigation.dart';
class bottomNavigation extends StatefulWidget {
  @override
  _bottomNavigationState createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {

 static int _selectedIndex2 = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex2 = index;
      currNav.setCurNav(_selectedIndex2);
      print('selected index '+_selectedIndex2.toString());
    });
  }


    @override
    Widget build(BuildContext context) {
      return BottomNavigationBar(
type:BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'My Cart',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Orders',
            backgroundColor: Colors.green,
          ),



        ],
        currentIndex: _selectedIndex2,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTap,
      );
    }


}

