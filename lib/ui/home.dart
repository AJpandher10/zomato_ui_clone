import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:zomato_ui_replication/constants/colors.dart';
import 'package:zomato_ui_replication/constants/textstyles.dart';
import 'package:zomato_ui_replication/ui/delivery/first.dart';
import 'package:zomato_ui_replication/ui/dinein/second.dart';
import 'package:zomato_ui_replication/ui/explore/fourth.dart';
import 'package:zomato_ui_replication/ui/gold/third.dart';
import 'package:zomato_ui_replication/ui/profile/fifth.dart';
import 'package:zomato_ui_replication/widgets/rating.dart';
import 'package:zomato_ui_replication/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
    FifthPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteColor,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.shopping_bag,size: 20,),
            title: Text('Order',style: TextStyle(fontSize: 14),),
          ),
          BottomNavigationBarItem(
            icon: Icon(MaterialCommunityIcons.shoe_print,size: 20),
            title: Text('Go Out',style: TextStyle(fontSize: 14)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category,size: 20),
            title: Text('Gold',style: TextStyle(fontSize: 14)),
          ),
          BottomNavigationBarItem(
            icon: Icon(SimpleLineIcons.compass,size: 20),
            title: Text('Explore',style: TextStyle(fontSize: 14)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,size: 20),
            title: Text('Profile',style: TextStyle(fontSize: 14)),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.primaryTextColorGrey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: _selectedIndex==2||_selectedIndex==4?Container(child:_widgetOptions.elementAt(_selectedIndex),) :Container(
          color: AppColors.whiteColor,
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,

                      child: Icon(
                        SimpleLineIcons.location_pin,
                        size: 24,
                        color: Colors.red.shade800,
                      ),
                    ),

                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Home',
                            textAlign: TextAlign.left,
                            style: TextStyles.actionTitle,
                          ),
                          Text(
                            'Ludhiana',
                            textAlign: TextAlign.left,
                            style: TextStyles.subText,
                          ),

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.payment,
                      color: AppColors.blackColor,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SearchBar('Search for restaurants, Cusines...'),
              _widgetOptions.elementAt(_selectedIndex),

            ],
          ),
        ),
      ),
    );
  }
}
