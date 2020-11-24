import 'package:flutter/material.dart';
import 'package:stonks_demo/shared/stonks_colors.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget tradeButton() => Container(
      height: 10,
      width: 70,
      margin: allSymmetric(13.0, 12.00),
      child: Center(
        child: FlatButton(
          onPressed: () {},
          padding: allCustompx(0.0),
          color: customGreen,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Center(
              child: Text('Trade',
                  style: stonksTheme()
                      .textTheme
                      .headline6
                      .apply(color: Colors.white))),
        ),
      ),
    );
