import 'package:flutter/material.dart';
import 'package:my_store/screens/authentication.dart';
import 'package:my_store/screens/home.dart';
import 'package:my_store/screens/signup_Screen.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<loginScreen> {
  final myController = TextEditingController();
  bool hidden=false;
  showorHIdePass(){
    hidden=!hidden;
  }
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
                    text: 'Log',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'IN',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange)
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
                  labelText: 'Email',
                ),
                obscureText:true,
            ),
            TextField(

              controller: myController,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      padding: const EdgeInsets.only(top: 15.0),
                      icon:  Icon(Icons.lock,),
                    onPressed: () => showorHIdePass(),
                  ),

                ),
              obscureText:!hidden,
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
                        MaterialPageRoute(builder: (context) => homepage()),
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
                          builder: (context) => signup(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'create Account?',
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
