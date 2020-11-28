import 'package:flutter/material.dart';
import 'package:zomato_ui_replication/constants/colors.dart';
import 'package:zomato_ui_replication/constants/textstyles.dart';
import 'package:zomato_ui_replication/ui/dinein/dining.dart';
import 'package:zomato_ui_replication/ui/dinein/nightlife.dart';
import 'package:zomato_ui_replication/widgets/rating.dart';


class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin{

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
              indicatorColor: Colors.red.shade800,
              labelColor: AppColors.errorStateLightRed,
              unselectedLabelColor: Colors.black54,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Dining',
                    style: TextStyle(fontSize: 20, letterSpacing: 2.0,color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'nightlife',
                    style: TextStyle(fontSize: 20, letterSpacing: 2.0,color: Colors.black),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: <Widget>[Dining(), NightLife()],
              ),
            )
          ]),
    );
  }
}
