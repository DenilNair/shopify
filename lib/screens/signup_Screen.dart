import 'package:flutter/material.dart';
import 'package:my_store/screens/authentication.dart';
import 'package:my_store/screens/home.dart';
import 'package:my_store/screens/login_screen.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
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
                    text: 'Sign',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' UP',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange)
                      )
                    ]
                )
            )
            ,
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(width: 30),

              ],),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'UserID',
                )
            ),
                       TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                )

    ),
      SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  ElevatedButton(

                    onPressed: () {
                      // Navigate back to first route when tapped.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginScreen()),
                      );
                    },
                    child: Text('SKip!'),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => authentication(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          'already Have Account?',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.normal, fontSize: 16.0),
                        ),
                      )
                      ,
                  )
                ]

            )
          ],
        ),
      ),
    );
  }
}
