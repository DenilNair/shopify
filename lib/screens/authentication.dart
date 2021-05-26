import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/screens/home.dart';
import 'package:my_store/screens/login_screen.dart';
import 'package:my_store/screens/signup_Screen.dart';
class authentication extends StatefulWidget {
  @override
  _authenticationState createState() => _authenticationState();
}

class _authenticationState extends State<authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
            Container(
              child: Image(
               image:AssetImage("images/auth.jpg"),
                height:MediaQuery.of(context).size.height/2,
                width:MediaQuery.of(context).size.width,
              ),

            ),
          RichText(
              text: TextSpan(
            text: 'Welcome to ',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' Shopify',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange)
              )
            ]
          )
          )
            ,
               SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(

                     onPressed: () {
                       // Navigate back to first route when tapped.
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => loginScreen()),
                       );
                     },
                     child: Text('Login'),
                     style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),),
                   ),
                 SizedBox(width: 30),
                   ElevatedButton(

                     onPressed: () {
                       // Navigate back to first route when tapped.
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => signup()),
                       );
                     },
                     child: Text('New User'),
                     style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),),
                   ),
               ],),


               SizedBox(height: 30),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(

              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              },
              child: Text('SKip!'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),),
            ),
          ]

    )
      ],
        ),
      ),
    );
  }
}
