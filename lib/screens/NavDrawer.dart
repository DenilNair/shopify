import 'package:flutter/material.dart';
import 'package:my_store/screens/authentication.dart';
import 'package:my_store/screens/category.dart';
import 'package:my_store/screens/currNavigation.dart';
import 'package:my_store/screens/feedback.dart';
import 'profile.dart';
import 'home.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Hi',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),

            decoration: BoxDecoration(
                color: Colors.orange,
               /* image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))*/
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Home'),
            onTap: () => {
              currNav.nav=0,
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homepage()),
              )},
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Shop by Category'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => category()),
            )},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => profile()),
            )},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings '),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => feedback()),
            )},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => authentication()),
            )},
          ),
        ],
      ),
    );
  }
}
