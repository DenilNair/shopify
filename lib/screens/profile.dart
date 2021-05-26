import 'package:flutter/material.dart';
import 'NavDrawer.dart';
class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopify'),
        backgroundColor: Colors.black,

      ),
      drawer: NavDrawer(),
      body:

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(height: 50,),
                Row(
                  children:<Widget> [
                    Container(
                      child: Text('Name'),

                    ),Container(
                      child: Text('Name'),
                    )
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  children:<Widget> [
                    Container(
                        child: Text('Address'),

                    ),Container(
                      child: Text('Address'),
                    )
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  children:<Widget> [
                    Container(
                        child: Text('Mobile Number'),

                    ),Container(
                      child: Text('Mob. No'),
                    )
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  children:<Widget> [
                    Container(
                        child: Text('Orders'),

                    ),Container(
                      child: Text('orders'),
                    )
                  ],
                ),
                SizedBox(height: 50,),




              ],
            ),


    );
  }
}
