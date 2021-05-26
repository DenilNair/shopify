import 'package:flutter/material.dart';

import 'itemDetails.dart';

class myorder extends StatelessWidget {
  static List<itemDetails> cartItem=itemDetails.itemsOrdered;
  double calculateTotal(){

    // final List<itemDetails> cartItem=
    double sum=0;
    for(itemDetails current in cartItem){
      sum+=current.costt;
    }
    return 0;
  }

  void orderproductnow(itemDetails toOrder){
    itemDetails.additemtoOrder(toOrder);
    itemDetails.removeitemDettails(toOrder);
  }
  @override
  Widget build(BuildContext context) {
    if(cartItem.length>1){
      return

        Column(
            children:<Widget> [
              Center(

                child:
                Container(
                    height: MediaQuery. of(context). size. height-200,
                    child: new ListView.builder(
                      itemCount: cartItem.length,
                      itemBuilder: (BuildContext context,int index){
                        return
                          Container(

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
                                        cartItem[index].name,
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
                                        onPressed: () {print('buying product');
                                        orderproductnow(cartItem[index]);},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.green,
                                            padding: EdgeInsets.symmetric( vertical: 5),
                                            textStyle: TextStyle(

                                                fontWeight: FontWeight.bold)
                                        ),
                                      )

                                      ,

                                    ],
                                  ),
                                ],
                              ),
                            ),



                          )
                        ;
                      },
                    )
                )
                ,

              ),


            ]
        )
      ;
    }
    else
      return Center(

          child:
          RichText(
              text: TextSpan(
                  text: 'Buy ',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Something',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange)
                    )
                  ]
              )
          )
      );


  }
}
