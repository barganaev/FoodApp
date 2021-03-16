import 'package:flutter/material.dart';
import 'package:food_app/screens/home/home_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[

    HomeScreen(),
    Text('Favorites'), // Favorites(),
    Text('Account'), // Account(),
    Text('More')// More(), // Map screen
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[400],
              // color: Color(0xFF435D6B),
              blurRadius: 30,
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                //color: Color(0xFFC8161D),
              ),
              title: Text(
                'Home',
                //style: TextStyle(color: Color(0xFFC8161D),),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                //color: Color(0xFFC8161D),
              ),
              title: Text(
                'Favorites',
                //style: TextStyle(color: Color(0xFFC8161D),),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                //color: Color(0xFFC8161D),
              ),
              title: Text(
                'Account',
                //style: TextStyle(color: Color(0xFFC8161D),),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz_rounded,
                //color: Color(0xFFC8161D),
              ),
              title: Text(
                'More',
                //style: TextStyle(color: Color(0xFFC8161D),),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFFC8161D),
          unselectedItemColor: Color(0xFF435D6B),
          onTap: _onItemTap,
          selectedFontSize: 13.0,
          unselectedFontSize: 13.0,
        ),
      ),
    );
  }
}
