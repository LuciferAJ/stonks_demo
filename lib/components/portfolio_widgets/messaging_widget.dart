import 'package:flutter/material.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget messagingWidget(context,_focus)=> Padding(
  padding:
  EdgeInsets.only(bottom: 12.0, left: 12.0, right: 12.0),
  child: Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            width: screenWidth(context) * 0.7,
            child: TextField(
              focusNode: _focus,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a Message',
                  hintStyle: stonksTheme()
                      .textTheme
                      .headline4
                      .apply(color: Colors.black38)),
            ),
          ),
          Spacer(),
          Icon(Icons.zoom_out_map,
              color: Colors.black38, size: 20),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
      ),
      Row(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.alternate_email,
                  size: 25,
                  color: Colors.black38,
                ),
                horizontalSpace(15),
                Icon(
                  Icons.image,
                  size: 25,
                  color: Colors.black38,
                ),
                horizontalSpace(15),
                Icon(
                  Icons.gif,
                  size: 25,
                  color: Colors.black38,
                ),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
          ),
          Spacer(),
          Icon(
            Icons.send,
            color: Colors.black38,
            size: 25,
          )
        ],
      )
    ],
  ),
);
