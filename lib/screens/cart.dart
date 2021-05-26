import 'package:flutter/material.dart';
import 'package:my_store/screens/home.dart';
import 'package:my_store/screens/itemDetails.dart';
import 'package:my_store/screens/myorder.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class cart extends StatelessWidget {

  //payment
  final  razorpay=Razorpay();
  @override
  void initState()
  {
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET,_handleExternalWallet );
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);

  }

  void _handlePaymentSuccess(PaymentSuccessResponse    paymentSuccessResponse)
  {
    print('paymet Successful  '+paymentSuccessResponse.paymentId) ;

    orderall();

  }
  void _handlePaymentError(PaymentFailureResponse    paymentFailureResponse)
  {
    print(paymentFailureResponse.message+paymentFailureResponse.code.toString()) ;
  }
  void _handleExternalWallet(ExternalWalletResponse    externalWalletResponse)
  {
    print(externalWalletResponse.walletName) ;
  }

  getPayment(){
    var options= {
      'key':'rzp_live_LwosaAuwQ85vw4',
      'amount':double.parse('1')*100,
      'name':'dennny',
      'orderid':'1232424',
      'prefill':{
        'contact':'8248514234', 'email':'denil007nair@gmail.com'
      }
    };
    try{
      razorpay.open(options);

    }
    catch(e){
      print('exception');
    }

  }

  static List<itemDetails> cartItem=itemDetails.items;
  double calculateTotal(){

   // final List<itemDetails> cartItem=
    double sum=0;
    for(itemDetails current in cartItem){
      sum+=current.costt;
    }
    return sum;
  }

  void orderproductnow(itemDetails toOrder){
    itemDetails.additemtoOrder(toOrder);
    itemDetails.removeitemDettails(toOrder);
    cartItem=itemDetails.items;
    for(itemDetails    cartItem1 in   itemDetails.items)
    print(cartItem1.name);

  }
  void orderall(){
    //itemDetails.additemtoOrder(toOrder);
    itemDetails.items=[];
    cartItem=itemDetails.items;
    for(itemDetails    cartItem1 in   itemDetails.items)
      print(cartItem1.name);

  }
  @override
  Widget build(BuildContext context) {

      if (cartItem.length > 0&& cartItem!=null) {
        return

          Column(
              children: <Widget>[
                Center(

                  child:
                  Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height - 250,
                      child: new ListView.builder(
                        itemCount: cartItem.length,
                        itemBuilder: (BuildContext context, int index) {
                          return
                            Container(

                              child: Card(
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
                                          onPressed: () {
                                            print('buying product');
                                            orderproductnow(cartItem[index]);

                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                              padding: EdgeInsets.symmetric(
                                                  ),
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
                Row(children:
    [
      SizedBox(width: 20,),
                  RichText(

                text: TextSpan(
                text: '',

                children: <TextSpan>[
                TextSpan(

                text: '₹ ' + calculateTotal().toString()+'  ',
                style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,

                color: Colors.orange)
                )
                ]
                )
                ),

Container(child:   ConstrainedBox( constraints: BoxConstraints.tightFor(width: 150, height: 70),
  // child:Align(
  //  alignment: Alignment.centerRight,
  child:    ElevatedButton(

    child:   RichText(
        text: TextSpan(

            children: <TextSpan>[
              TextSpan(
                  text: 'PLACE ORDER',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)
              )
            ]
        )
    ),
    onPressed: () {
      getPayment();
      // orderproductnow(cartItem[index]);
      print('paymet successfulll');


    },
    style: ElevatedButton.styleFrom(


        primary: Colors.green,
        padding: EdgeInsets.symmetric(
        ),
        textStyle: TextStyle(

            fontWeight: FontWeight.bold)
    ),
  ) ,
))

              ],)

                ,






              ]
          )
        ;
      }

    else
      return Center(

          child:
          RichText(
              text: TextSpan(
                  text: 'Cart ',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Empty',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange)
                    )
                  ]
              )
          )
      );


  }
}
