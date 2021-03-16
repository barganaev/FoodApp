import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/screens/home/order_screen.dart';
import 'package:food_app/screens/home/order_screen_experimential.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Color(0xFF910203),),
              Text("Chicago, IL", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
            ]
        ),
        leading: GestureDetector(
          onTap: (){},
          child: Image.asset("assets/menu_button.png"),
        ),
        actions: [
          Image.asset("assets/avatar_account.png"),
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // child: Column(
        //   children: [
        //     Container(color: Colors.red, height: 200,),
        //     Container(color: Colors.blue, height: 200,),
        //     Container(color: Colors.green, height: 200,),
        //     Container(color: Colors.yellow, height: 200,),
        //     Container(color: Colors.brown, height: 200,),
        //     Container(color: Colors.red, height: 200,),
        //   ],
        // ),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Hey!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              subtitle: Text('Let\'s get your order',  style: TextStyle(fontSize: 16, /*fontWeight: FontWeight.bold,*/ color: Color(0xFF435D6B)),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.02),
              // padding: EdgeInsets.horizontal(screenSize(context).width * 0.12),
              child: Card(
                elevation: 10,
                child: TextFormField(
                  initialValue: 'Search our delicious burgers', style: TextStyle(color: Color(0xFF435D6B)),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Container(
              height: screenSize(context).height * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.04, vertical: screenSize(context).height * 0.01),
                    child: Container(
                      width: screenSize(context).width * 0.25,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OrderScreenExperimential() /*OrderScreen()*/));
                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Color(0xFFC8161D),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.025),
                                child: Container(
                                  height: screenSize(context).height * 0.08,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white
                                  ),
                                  child: Image.asset(
                                      'assets/burget.png',
                                      height: screenSize(context).height * 0.1,
                                      width: screenSize(context).width * 0.15
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.01),
                                child: Text('Burgers', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.018),
                                child: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.keyboard_arrow_right, color: Color(0xFFC8161D))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.04, vertical: screenSize(context).height * 0.01),
                    child: Container(
                      width: screenSize(context).width * 0.25,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        //color: Color(0xFFC8161D),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.025),
                              child: Container(
                                height: screenSize(context).height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white
                                ),
                                child: Image.asset(
                                    'assets/pizza.png',
                                    height: screenSize(context).height * 0.1,
                                    width: screenSize(context).width * 0.15
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.01),
                              child: Text('Pizza', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.018),
                              child: CircleAvatar(backgroundColor: Colors.black, child: Icon(Icons.keyboard_arrow_right, color: Colors.white,)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.04, vertical: screenSize(context).height * 0.01),
                    child: Container(
                      width: screenSize(context).width * 0.25,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.025),
                              child: Container(
                                height: screenSize(context).height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white
                                ),
                                  child: Image.asset(
                                    'assets/cake.png',
                                    height: screenSize(context).height * 0.1,
                                    width: screenSize(context).width * 0.15
                                  ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.01),
                              child: Text('Cakes', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.018),
                              child: CircleAvatar(backgroundColor: Colors.black, child: Icon(Icons.keyboard_arrow_right, color: Colors.white,)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.04, vertical: screenSize(context).height * 0.01),
                    child: Container(
                      width: screenSize(context).width * 0.25,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Color(0xFFC8161D),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.025),
                              child: Container(
                                height: screenSize(context).height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white
                                ),
                                child: Image.asset(
                                    'assets/burget.png',
                                    height: screenSize(context).height * 0.1,
                                    width: screenSize(context).width * 0.15
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.01),
                              child: Text('Burgers', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.018),
                              child: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.keyboard_arrow_right, color: Color(0xFFC8161D))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.04, vertical: screenSize(context).height * 0.01),
                    child: Container(
                      width: screenSize(context).width * 0.25,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Color(0xFFC8161D),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.025),
                              child: Container(
                                height: screenSize(context).height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white
                                ),
                                child: Image.asset(
                                    'assets/burget.png',
                                    height: screenSize(context).height * 0.1,
                                    width: screenSize(context).width * 0.15
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.01),
                              child: Text('Burgers', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.018),
                              child: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.keyboard_arrow_right, color: Color(0xFFC8161D))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.013),
                child: ListTile(
                  leading: Text('Popular', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                  trailing: FittedBox(fit: BoxFit.fill, child: Row(children: [Text('View all', style: TextStyle(color: Color(0xFFC8161D))), Icon(Icons.keyboard_arrow_right_outlined, color: Color(0xFFC8161D),)],)),
                ),
            ),
            Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.03, horizontal: screenSize(context).width * 0.03),
                        child: Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1.0,
                                  blurRadius: 3.0
                              ),
                            ],
                          ),
                          child: Card(
                            //elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.02, horizontal: screenSize(context).width * 0.02),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xFFC8161D)
                                    ),
                                    height: MediaQuery.of(context).size.height * 0.2,
                                    //color: Colors.red,
                                  ),
                                ),
                                ListTile(
                                  title: Text('Chipotle Cheesy Chicken', style: TextStyle(color: Colors.black),),
                                  subtitle: Text('Chicken Burger', style: TextStyle(color: Color(0xFF435D6B))),
                                  trailing: Text('\$20.95', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.03, horizontal: screenSize(context).width * 0.03),
                        child: Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1.0,
                                blurRadius: 3.0
                              ),
                            ],
                          ),
                          child: Card(
                            //elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.02, horizontal: screenSize(context).width * 0.02),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xFFC8161D)
                                    ),
                                    height: MediaQuery.of(context).size.height * 0.2,
                                    //color: Colors.red,
                                  ),
                                ),
                                ListTile(
                                  title: Text('Chipotle Cheesy Chicken', style: TextStyle(color: Colors.black),),
                                  subtitle: Text('Chicken Burger', style: TextStyle(color: Color(0xFF435D6B)),),
                                  trailing: Text('\$20.95', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                    child: Image.asset(
                      'assets/bigburger.png',
                      height: screenSize(context).height * 0.24,
                    )
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
