import 'package:flutter/material.dart';
import 'package:zomato_ui_replication/constants/colors.dart';
import 'package:zomato_ui_replication/constants/textstyles.dart';
import 'package:zomato_ui_replication/ui/explore/feed.dart';
import 'package:zomato_ui_replication/ui/explore/videos.dart';
import 'package:zomato_ui_replication/widgets/rating.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> with TickerProviderStateMixin {

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
              indicatorColor: AppColors.whiteColor,
              labelColor: AppColors.errorStateLightRed,
              unselectedLabelColor: Colors.black54,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'feed',
                    style: TextStyle(fontSize: 20, letterSpacing: 2.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'videos',
                    style: TextStyle(fontSize: 20, letterSpacing: 2.0),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: <Widget>[Feed(), Videos()],
              ),
            )
          ]),
    );
  }
}
