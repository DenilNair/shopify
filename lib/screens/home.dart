import 'package:flutter/material.dart';
import 'package:my_store/screens/NavDrawer.dart';
import 'package:my_store/screens/cart.dart';
import 'package:my_store/screens/homepage.dart';
import 'package:my_store/screens/items.dart';
import 'package:my_store/screens/myorder.dart';
import 'currNavigation.dart';
class homepage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<homepage> {


  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

Widget returnpage(){
 // print('home page called');
  if(currNav.getCurNav()==0){
    return mainmenu();
  }

  if(currNav.getCurNav()==1){
    return cart();
  }

  if(currNav.getCurNav()==2){
    return myorder();
  }

  return mainmenu();
}



  static int _selectedIndex2 = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex2 = index;
      currNav.setCurNav(_selectedIndex2);
    //  print('selected index '+_selectedIndex2.toString());
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopify'),
        backgroundColor: Colors.orangeAccent,
        actions:<Widget> [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      drawer: NavDrawer(),
      body:  //_widgetOptions.elementAt(_selectedIndex2),

      returnpage()
      ,

      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'My Cart',
            backgroundColor: Colors.blue,
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
      ),
    );
  }
}
