import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingflutterapp/model/smoothie.dart';

class PaymentPage extends StatefulWidget {
  final Smoothie smoothie;

  const PaymentPage({Key key, this.smoothie}) : super(key: key);

  @override
  _SmoothDetailState createState() => _SmoothDetailState();
}

class _SmoothDetailState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFF757575),
        appBar: AppBar(
          title: Text("Payment Page"),
          backgroundColor: Color(0xDD000000),
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 320),
                    child: Container(
                      height:screenHeight * 0.8 ,
                      width: 500,
                      color: Color(widget.smoothie.color),
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 150,top: 40),
                            child: Text(widget.smoothie.cost,style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              height: 50,

                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[

                                  RaisedButton(
                                    onPressed: () {},
                                    textColor: Colors.white,
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFF0D47A1),
                                            Color(0xFF1976D2),
                                            Color(0xFF42A5F5),
                                          ],
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(10.0),
                                      child: const Text(
                                          '₹ BUY NOW',
                                          style: TextStyle(fontSize: 20)
                                      ),
                                    ),
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    textColor: Colors.white,
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFFFFAB00),
                                            Color(0xFFFFC400),
                                            Color(0xFFFFD740),
                                          ],
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(10.0),
                                      child: const Text(
                                          'ADD TO CART',
                                          style: TextStyle(fontSize: 20)
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 16),
                            child: Text("Product details: ",style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(widget.smoothie.description,style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.white,
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),

//                  Padding(
//                    padding: const EdgeInsets.only(top: 40),
//                    child: Row(
//                      children: <Widget>[
//                        Image.asset(widget.smoothie.subImage,height: 300,width: 100,),
//                        Image.asset(widget.smoothie.imagePath,height: 300,width: 260,),
//                      ],
//                    ),
//                  ),



                ],
              )
            ],

          ),
        )

    );
  }
}
