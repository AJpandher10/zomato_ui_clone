import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:zomato_ui_replication/constants/colors.dart';
import 'package:zomato_ui_replication/ui/delivery/food.dart';
import 'package:zomato_ui_replication/ui/delivery/grocery.dart';
import 'package:zomato_ui_replication/ui/delivery/self.dart';
import 'package:zomato_ui_replication/ui/delivery/work.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

        TabBar(
          controller: tabController,
          indicatorColor: Colors.red.shade900,
          labelColor: AppColors.errorStateLightRed,
          unselectedLabelColor: Colors.black54,labelStyle: TextStyle(fontSize: 20, letterSpacing: 2.0,color: Colors.red.shade800),
          unselectedLabelStyle: TextStyle(
              fontSize: 18, color: Colors.grey.shade800),
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              child: Row(
                children: [
                  Text(
                    'Delivery',
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2.0,
                        color: Colors.black),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.two_wheeler_outlined,color: Colors.black,)
                ],
              ),
            ),

                Tab(
                  child: Row(
                    children: [
                      Text(
                        'Self pickup',
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2.0,
                            color: Colors.black),

                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.shopping_bag_outlined,color: Colors.black,)

                    ],
                  ),
                ),

          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: <Widget>[FoodTab(), SelfTab()],
          ),
        )
      ]),
    );
  }
}
