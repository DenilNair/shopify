import 'package:flutter/material.dart';
import 'package:my_store/screens/bottomNavigation.dart';
import 'package:my_store/screens/items.dart';
import 'NavDrawer.dart';
class category extends StatelessWidget {
  List<String> images = [
    "assets/Apples.png",
    "assets/Bananas.png",
    "assets/Cherries.png",
    "assets/Grapes.png",
    "assets/Oranges.png",
    "assets/Peaches.png",
    "assets/Plumbs.png",
    "assets/Rasberries.png",
    "assets/Strawberries.png",
  ];

 static const List<String> category_name = [
    "Grains",
    "Bakery",
    "Daily Utensils",
    "Snacks",
    "Dairy",
    "Oil",
    "Plastic Items",
    "Chips",
    "More...",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopify'),
          backgroundColor: Colors.black,

        ),
        drawer: NavDrawer(),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 250,
                height: 250,
                child: Stack(

                  children: <Widget>[

                    Container(

                      width: 250,
                      height: 250,
                      color: Colors.white,
                    ),
                    InkWell(
                      child:
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.black.withAlpha(0),
                            Colors.black12,
                            Colors.black45
                          ],
                        )
                        ,
                      ),
                      child:  Text(
                        category_name.elementAt(index),
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                    ),
                      onTap: () => {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => items()),
                      )},
              )
                  ],

                ),

              );
            },
          ),
        ),
      ),
        //bottomNavigationBar: bottomNavigation(),
    );
  }
}
