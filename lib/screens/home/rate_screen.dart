import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class RateScreen extends StatefulWidget {
  @override
  _RateScreenState createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC8161D),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.05),
            child: Text('Rate your service', style: TextStyle(color: Colors.white, fontSize: screenSize(context).width * 0.06),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.03, horizontal: screenSize(context).width * 0.3),
            child: Text('How was your food?', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: screenSize(context).width * 0.07),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset('assets/dislike.png', color: Colors.black, height: screenSize(context).height * 0.04,),
              ),
              CircleAvatar(
                radius: screenSize(context).width * 0.19,
                backgroundColor: Colors.white,
                child: Image.asset('assets/bigburger.png', height: screenSize(context).height * 0.15,),
                //backgroundImage: AssetImage('assets/bigburger.png', ),
                //child: Image.asset('assets/bigburger.png', color: Colors.black,),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset('assets/like.png', color: Color(0xFFC8161D), height: screenSize(context).height * 0.04,),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.03, horizontal: screenSize(context).width * 0.2),
            child: Text('How was your delivery?', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: screenSize(context).width * 0.07),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset('assets/dislike.png', color: Colors.black, height: screenSize(context).height * 0.04,),
              ),
              CircleAvatar(
                radius: screenSize(context).width * 0.19,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/rate_personality.png'),
                //child: Image.asset('assets/rate_personality.png', color: Colors.black,),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset('assets/like.png', color: Color(0xFFC8161D), height: screenSize(context).height * 0.04,),
              )
            ],
          )
        ],
      ),
    );
  }
}
