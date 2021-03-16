import 'package:flutter/material.dart';
import 'package:food_app/nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        // brightness: Brightness.dark,
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],
        //
        // // Define the default font family.
        // fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.red),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic,color: Colors.red),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind',color: Colors.red),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Nav(),
    );
  }
}
