import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/screens/home/rate_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 0;

  void _increase(){
    setState(() {
      counter++;
    });
  }

  void _decrease(){
    setState(() {
      if(counter <= 0){
        counter = 0;
      }else{
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Center(child: Text('Cart', style: TextStyle(color: Colors.black),)),
        actions: [
          Container(
            width: screenSize(context).width * 0.135,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                elevation: 10,
                child: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.black,
                )
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: screenSize(context).height * 0.4,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.02, horizontal: screenSize(context).height * 0.02),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.01),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3.0,
                                  spreadRadius: 1.0,
                                ),
                              ]
                          ),
                          height: screenSize(context).height * 0.2,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.01),
                                child: Image.asset('assets/bigburger.png', width: screenSize(context).width * 0.3,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: screenSize(context).width * 0.03),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Chipotle Che...', style: TextStyle(color: Colors.black, fontSize: 20),),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.1
                                        ),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     //color: Colors.grey,
                                        //     color: Colors.grey.withOpacity(0.5),
                                        //     spreadRadius: 5,
                                        //     //blurRadius: 7,
                                        //     offset: Offset(0, 3),
                                        //   )
                                        // ]
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: _decrease,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.03),
                                              child: Text('-', style: TextStyle(fontSize: 20),),
                                            ),
                                          ),
                                          Text('$counter', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
                                          GestureDetector(
                                            onTap: _increase,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.03),
                                              child: Text('+', style: TextStyle(fontSize: 20),),
                                            ),
                                          )
                                          // ElevatedButton(
                                          //   style: ElevatedButton.styleFrom(
                                          //     primary: Colors.white
                                          //   ),
                                          //   onPressed: (){},
                                          //   child: Text('-', style: TextStyle(color: Colors.red),
                                          //     )
                                          // ),
                                          // Text('2', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),),
                                          // ElevatedButton(
                                          //   style: ElevatedButton.styleFrom(
                                          //     primary: Colors.white
                                          //   ),
                                          //     onPressed: (){},
                                          //     child: Text('+', style: TextStyle(color: Colors.red),
                                          //     )
                                          // )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: screenSize(context).width * 0.1),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.cancel, color: Colors.red,),
                                    // ElevatedButton(onPressed: (){}, child: Icon(Icons.cancel)),
                                    Text('\$41.90', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.01),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3.0,
                                  spreadRadius: 1.0,
                                ),
                              ]
                          ),
                          height: screenSize(context).height * 0.2,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.01),
                                child: Image.asset('assets/orderburger.png', width: screenSize(context).width * 0.3,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: screenSize(context).width * 0.03),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Chipotle Che...', style: TextStyle(color: Colors.black, fontSize: 20),),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.1
                                        ),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     //color: Colors.grey,
                                        //     color: Colors.grey.withOpacity(0.5),
                                        //     spreadRadius: 5,
                                        //     //blurRadius: 7,
                                        //     offset: Offset(0, 3),
                                        //   )
                                        // ]
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: _decrease,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.03),
                                              child: Text('-', style: TextStyle(fontSize: 20),),
                                            ),
                                          ),
                                          Text('$counter', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
                                          GestureDetector(
                                            onTap: _increase,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: screenSize(context).width * 0.03),
                                              child: Text('+', style: TextStyle(fontSize: 20),),
                                            ),
                                          )
                                          // ElevatedButton(
                                          //   style: ElevatedButton.styleFrom(
                                          //     primary: Colors.white
                                          //   ),
                                          //   onPressed: (){},
                                          //   child: Text('-', style: TextStyle(color: Colors.red),
                                          //     )
                                          // ),
                                          // Text('2', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),),
                                          // ElevatedButton(
                                          //   style: ElevatedButton.styleFrom(
                                          //     primary: Colors.white
                                          //   ),
                                          //     onPressed: (){},
                                          //     child: Text('+', style: TextStyle(color: Colors.red),
                                          //     )
                                          // )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: screenSize(context).width * 0.1),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.cancel, color: Colors.red,),
                                    // ElevatedButton(onPressed: (){}, child: Icon(Icons.cancel)),
                                    Text('\20.95', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.red,
                      ),
                      Container(
                        height: 200,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 200,
                        color: Colors.green,
                      ),
                      Container(
                        height: 200,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenSize(context).height * 0.01, horizontal: screenSize(context).width * 0.03),
              child: Container(
                height: screenSize(context).height * 0.08,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        )
                    ),
                    onPressed: (){},
                    child: Text('Apply Coupons', style: TextStyle(color: Colors.white),)),
              ),
            ),
            Container(
                child: Divider()
            ),
            Container(
              height: screenSize(context).height * 0.05,
              child: ListTile(
                leading: Text('Item Total', style: TextStyle(color: Color(0xFF435D6B)),),
                trailing: Text('\$62.85', style: TextStyle(color: Colors.black),),
              ),
            ),
            Container(
              height: screenSize(context).height * 0.05,
              child: ListTile(
                leading: Text('Item Total', style: TextStyle(color: Color(0xFF435D6B)),),
                trailing: Text('\$62.85', style: TextStyle(color: Colors.black),),
              ),
            ),
            Container(
              height: screenSize(context).height * 0.05,
              child: ListTile(
                leading: Text('Item Total', style: TextStyle(color: Color(0xFF435D6B)),),
                trailing: Text('\$62.85', style: TextStyle(color: Colors.black),),
              ),
            ),
            Container(
              child: ListTile(
                leading: Text('Total: ', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                trailing: Text('\$62.85', style: TextStyle(color: Colors.black),),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize(context).height * 0.02),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFC8161D),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RateScreen()));
                  },
                  child: Text('Proceed to payment method')
              ),
            )
          ],
        ),
      ),
    );
  }
}
