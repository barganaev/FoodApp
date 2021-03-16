import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/constants/constants.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
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
        actions: [
          Container(
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
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: screenSize(context).height*0.6,
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
                  padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.05, horizontal: screenSize(context).width * 0.05),
                  child: ListTile(
                    title: Center(child: Text('Chipotle Cheesy Chicken', textAlign: TextAlign.center,)),
                    subtitle: Center(child: Text('A signature flame-grilled chicken patty tapped with smoked beef', textAlign: TextAlign.center)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenSize(context).height*0.6),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Text("S",style: TextStyle(color: Colors.red),),
                    ),
                    Card(
                      child: Text("X",style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Text("M",style: TextStyle(color: Colors.red),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Text("S",style: TextStyle(color: Colors.red),),
                    ),
                    Card(
                      child: Text("X",style: TextStyle(color: Colors.red)),
                    ),
                    Card(
                      child: Text("X",style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}
