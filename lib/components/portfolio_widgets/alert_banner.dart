import 'package:flutter/material.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget alertBanner(context) => Container(
      width: screenWidth(context),
      color: Colors.redAccent,
      child: Padding(
        padding: all12px(),
        child: RichText(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
              text: 'Restore your position in',
              style: TextStyle(color: Colors.white, fontSize: 12),
              children: <TextSpan>[
                TextSpan(
                  text: ' 21',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' days, or you will be kicked out of the stock market',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ]),
        ),
      ),
    );
