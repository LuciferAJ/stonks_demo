import 'package:flutter/material.dart';
import 'package:stonks_demo/components/home_widgets/portfolio.dart';
import 'package:stonks_demo/components/home_widgets/latest_total.dart';
import 'package:stonks_demo/components/home_widgets/price_graph.dart';
import 'package:stonks_demo/components/home_widgets/profile_intro.dart';
import 'package:stonks_demo/components/home_widgets/top_post.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        verticalSpace(10),
        profileIntro(),
        latestTotal(context),
        PriceGraph(),
        Padding(
          padding: allHorizontalpx(12.0),
          child: Divider(
            height: 0,
            thickness: 0.5,
          ),
        ),
        ListTile(
          contentPadding: allHorizontalpx(12.0),
          title: Text('Buying Power',style: stonksTheme().textTheme.bodyText2.apply(color: Colors.black87),),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('\$300.03',style: TextStyle(color: Colors.black87),),
              Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black87,)
            ],
          ),
        ),
        portfolio(context),
        topPosts(context)
      ],
    );
  }
}
