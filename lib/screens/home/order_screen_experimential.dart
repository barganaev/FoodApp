import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/screens/home/cart_screen.dart';

class OrderScreenExperimential extends StatefulWidget {
  @override
  _OrderScreenExperimentialState createState() => _OrderScreenExperimentialState();
}

class _OrderScreenExperimentialState extends State<OrderScreenExperimential> {
  String newValue;
  int cnt = 0;

  void _incresingCnt(){
    setState((){
      cnt++;
    });
  }

  void _decreasingCnt(){
    setState((){
      if(cnt <= 0){
        cnt = 0;
      }else{
        cnt--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenSize(context).height * 0.78),
            child: Container(
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF27D82),
                            shape: CircleBorder()
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(100.0)
                            //   )
                          ),
                          onPressed: _decreasingCnt,
                          child: Icon(
                            CupertinoIcons.minus,
                            color: Colors.black,
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.08),
                        child: Text('$cnt', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF27D82),
                          shape: CircleBorder()
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(100.0)
                          // )
                        ),
                          onPressed: _incresingCnt,
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          )
                      ),
                      Spacer()
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenSize(context).height * 0.04),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Price', style: TextStyle(color: Color(0xFF435D6B)),),
                            subtitle: Text('\$ 41.90', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
                            // trailing: Card(
                            //   child: Text('Go to Cart'),
                            // ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                          },
                          child: Container(
                            height: screenSize(context).height * 0.1,
                            width: screenSize(context).width * 0.435,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(left: Radius.circular(10))
                              ),
                              color: Color(0xFFC8161D),
                              child: Center(child: Text('Go to Cart', style: TextStyle(color: Colors.white),)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: screenSize(context).height*0.65,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                border: Border(

                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(screenSize(context).width/2, screenSize(context).height/5),
                  bottomRight: Radius.elliptical(screenSize(context).width/2, screenSize(context).height/5),
                )
            ),
            child: Column(
              children: [
                Padding(
                  // padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.2, horizontal: screenSize(context).width * 0.05),
                  padding: EdgeInsets.only(top: screenSize(context).height * 0.17,/* left: screenSize(context).width * 0.05, right: screenSize(context).width * 0.05*/),
                  child: ListTile(
                    title: Center(child: Text('Chipotle Cheesy Chicken', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)),
                    subtitle: Center(child: Text('A signature flame-grilled chicken patty tapped with smoked beef', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF435D6B)),)),
                  ),
                ),
                Container(
                    // color: Colors.blue,
                    // height: screenSize(context).height * 0.4,
                    // height: 300,
                  child: Image.asset(
                      'assets/orderburger.png',
                      fit: BoxFit.fill,
                      // height: screenSize(context).height * 0.2,
                      width: screenSize(context).width *0.8,
                  )
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenSize(context).height * 0.05),
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    leading: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: screenSize(context).height * 0.08,
                        width: screenSize(context).width * 0.135,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            elevation: 10,
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.black,
                            )
                        ),
                      ),
                    ),
                    trailing: Container(
                      height: screenSize(context).height * 0.08,
                      width: screenSize(context).width * 0.135,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          elevation: 10,
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFC8161D),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenSize(context).height * 0.45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 10
                              )
                            ]
                          ),
                          height: screenSize(context).height * 0.08,
                          width: screenSize(context).width * 0.135,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text("S", style: TextStyle(color: Colors.black),)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 10
                                )
                              ]
                          ),
                          height: screenSize(context).height * 0.08,
                          width: screenSize(context).width * 0.135,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text("L", style: TextStyle(color: Colors.black))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[300],
                                  blurRadius: 10
                              )
                            ]
                        ),
                        height: screenSize(context).height * 0.08,
                        width: screenSize(context).width * 0.135,
                        child: Card(
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("M",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
