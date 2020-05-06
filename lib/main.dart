import 'package:flutter/material.dart';
import 'package:shoppingflutterapp/SmootDetail.dart';
import 'package:shoppingflutterapp/model/smoothie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF757575),
          appBar: AppBar(
            backgroundColor: Color(0xDD000000),
            centerTitle: true,
            title: Text("Shopping App",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),),
          ),
          body:
          ListView.builder
            (
              itemCount: smoothies.length,
              itemBuilder: (BuildContext ctxt, int index) {
                Smoothie smoothie = smoothies[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(
                        builder: (_)=> SmoothDetail(
                          smoothie: smoothie,
                        )
                    )),
                    child: Container(
                      child: Stack(

                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 200,
                                width: 320,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE0E0E0),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 35, right: 10),
                                  child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 150),
                                        child: Container(
                                          height: 180,
                                          width: 150,
                                          color: Color(smoothie.color),
                                          child: Center(
                                            child: Text(smoothie.offerDesc,style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 40
                                            ),
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 20),
                              child: Image.asset(
                                smoothie.imagePath,
                                height: 200,
                                width: 200,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 170),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[

                                RaisedButton(
                                  onPressed:()=>Navigator.push(context, MaterialPageRoute(
                                    builder: (_)=> SmoothDetail(
                                    smoothie: smoothie,
                                )
                               )),
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
                        ],
                      ),
                    ),
                  ),
                );
              }
          )



      ),
    );
  }
}

