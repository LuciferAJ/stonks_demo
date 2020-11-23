import 'package:flutter/material.dart';
import 'package:stonks_demo/shared/stonks_colors.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget customBottomNavigationBar()=>
    Container(
      color: primaryColor,
      child: TabBar(tabs:
      [

        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 50,
                child: Center(
                  child: Padding(
                    padding: allVerticalpx(2.0),
                    child: Icon(Icons.home,size: 26,),
                  ),
                ),
              ),
              Padding(
                padding: allVerticalpx(2.0),
                child: Text('HOME'),
              )
            ],
          ),
        ),
        Tab(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 50,
                  child: Center(
                    child: Padding(
                      padding: allVerticalpx(2.0),
                      child: Icon(Icons.chat,size: 26,),
                    ),
                  ),
                ),
                Padding(
                  padding: allVerticalpx(2.0),
                  child: Text('CHATS'),
                )
              ],
            )
        ),
        Tab(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 50,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: allVerticalpx(2.0),
                          child: Icon(Icons.alternate_email,size: 26,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(child: Padding(
                          padding: allHorizontalpx(5.0),
                          child: Text('2',style: stonksTheme().textTheme.headline3.apply(color:primaryColor),),
                        ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: accentColor
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: allVerticalpx(2.0),
                  child: Text('MENTIONS'),
                )
              ],
            )
        ),
        Tab(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 50,
                  child: Center(
                    child: Padding(
                      padding: allVerticalpx(2.0),
                      child: Icon(Icons.search,size: 26,),
                    ),
                  ),
                ),
                Padding(
                  padding: allVerticalpx(2.0),
                  child: Text('BROWSE'),
                )
              ],
            )
        )
      ],
        labelStyle: stonksTheme().textTheme.subtitle1,
        indicatorPadding: EdgeInsets.all(0),
        labelPadding: EdgeInsets.all(0),
        unselectedLabelColor: Colors.black38,
        labelColor: accentColor,
        indicatorColor: Colors.transparent,
       ),
    );