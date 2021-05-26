import 'package:flutter/material.dart';
import 'package:my_store/screens/NavDrawer.dart';
import 'package:my_store/screens/itemDetails.dart';

class items extends StatefulWidget {
  @override
  _itermState createState() => _itermState();
}

class _itermState extends State<items> {
  final List<itemDetails> l1=[
    new itemDetails('samsung s10', 101, 11100),

    new itemDetails('samsung s20', 102, 9100),

    new itemDetails('samsung m50', 103, 100),
    new itemDetails('Micromax m50', 103, 100),
    new itemDetails('Asus m50', 103, 100),

  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Shopify'),
          backgroundColor: Colors.black,

        ),
        drawer: NavDrawer(),
        body:    Container(
            height: MediaQuery. of(context). size. height,
            child: new ListView.builder(
              itemCount: l1.length,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  child:Card(
                    shape: RoundedRectangleBorder(
                      ///borderRadius: BorderRadius.circular(15.0),
                    ),

                    color: Colors.white,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.album, size: 60),
                          title: Text(
                              l1[index].name,
                              style: TextStyle(fontSize: 30.0)
                          ),
                          subtitle: Text(
                              'Best of Sonu Nigam Music.',
                              style: TextStyle(fontSize: 18.0)
                          ),
                        ),
                        ButtonBar(

                          children: <Widget>[
                            ElevatedButton(

                              child: const Text('Buy'),
                              onPressed: () {/* ... */},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  padding: EdgeInsets.symmetric( vertical: 5),
                                  textStyle: TextStyle(

                                      fontWeight: FontWeight.bold)
                              ),
                            )
                            ,
                            ElevatedButton(
                              child: const Text('Add to Cart'),
                              onPressed: () {/* ... */
                                print('adding to cart');
                                itemDetails.additemDettails(l1[index]);},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                  textStyle: TextStyle(

                                      fontWeight: FontWeight.bold)),
                            )
                            ,

                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
        ),
      )


    ;
  }
}


