import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget profileIntro() =>
    Padding(
      padding: all12px(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Welcome back Ajay',style: stonksTheme().textTheme.bodyText2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: RichText(
                  text: TextSpan(
                      text: '\$1,030,991',
                      style: GoogleFonts.workSans(
                        textStyle: stonksTheme().textTheme.headline1,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '.86', style: stonksTheme().textTheme.subtitle2)
                      ]),
                ),
              ),
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/johnDoeSample.jpg'),
              )
            ],
          ),
        ],
      ),
    );
