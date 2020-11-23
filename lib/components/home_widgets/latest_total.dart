import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stonks_demo/shared/stonks_colors.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget latestTotal(context)=>
    Padding(
      padding: all12px(),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('TODAY',style: stonksTheme().textTheme.subtitle1,),
                  Text('↑ 2.62%',style: stonksTheme().textTheme.bodyText1.apply(color: customGreen),)
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('TOTAL %',style: stonksTheme().textTheme.subtitle1,),
                  Text('↑ 32.14%',style: stonksTheme().textTheme.bodyText1.apply(color: customGreen),)
                ],
              ),
            ), Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('TOTAL \$',style: stonksTheme().textTheme.subtitle1,),
                  Text('\$ 330,961',style: stonksTheme().textTheme.bodyText1.apply(color: Colors.black,),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
