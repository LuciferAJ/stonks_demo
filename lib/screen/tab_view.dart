import 'package:flutter/material.dart';
import 'package:stonks_demo/components/bottom_navigationbar.dart';
import 'package:stonks_demo/screen/home_page.dart';
import 'package:stonks_demo/shared/stonks_colors.dart';

class HomeTabView extends StatefulWidget  {
  @override
  _HomeTabViewState createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> with AutomaticKeepAliveClientMixin  {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: primaryColor,
        bottomNavigationBar: customBottomNavigationBar(),
        body: TabBarView(children: [
          HomePage(),
          Container(
            child: Center(child: Text("CHATS"),),
          ),
          Container(
            child: Center(child: Text("MENTIONS"),),
          ),
          Container(
            child: Center(child: Text("BROWSE"),),
          ),
        ],
        ),

      ),
    );
  }

}
