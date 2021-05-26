import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';



class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  final FirebaseAuth _auth=FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  String _email="",_password="";
  checkAuthentication () async{
    _auth
        .authStateChanges()
        .listen(( user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
