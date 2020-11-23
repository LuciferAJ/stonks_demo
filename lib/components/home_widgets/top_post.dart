import 'package:flutter/material.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget topPosts(context)=>
    Padding(
      padding: allSymmetric(8.0, 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Top Posts',style: stonksTheme().textTheme.headline5,),
          ListTile(
            contentPadding: EdgeInsets.only(left: 12.0),
            isThreeLine: true,
            leading: Container(
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/johnDoeSample.jpg',),
              ),
            ),
            title: Row(
              children: <Widget>[
                Text('Ajaykumar Alapati',style: stonksTheme().textTheme.headline6,),
                Padding(
                  padding:allHorizontalpx(4.0),
                  child: Text('2:18 PM',style: stonksTheme().textTheme.caption,),
                )
              ],
            ),
            subtitle: Text('Tech Stocks up 5% holy molly. What a time to be alive. Who cares if it\'s a bubble?',
            style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black87),
            ),
          )
        ],
      ),
    );