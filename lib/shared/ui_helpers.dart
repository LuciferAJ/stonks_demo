import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Widget horizontalSpaceTiny = SizedBox(
  width: 5,
);
Future<dynamic> navigatorPush(context, navigationClass) => Navigator.of(context)
    .push(MaterialPageRoute(builder: ((context) => navigationClass)));

Widget horizontalSpace(double width) => SizedBox(
      width: width,
    );
Widget verticalSpace(double height) => SizedBox(
      height: height,
    );

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

TextTheme myTextTheme(BuildContext context) => Theme.of(context).textTheme;
EdgeInsets all4px() => EdgeInsets.all(4);
EdgeInsets all8px() => EdgeInsets.all(8);
EdgeInsets all12px() => EdgeInsets.all(12);
EdgeInsets all16px() => EdgeInsets.all(16);
EdgeInsets allCustompx(value) => EdgeInsets.all(value);
EdgeInsets allHorizontalpx(value) => EdgeInsets.symmetric(horizontal: value);
EdgeInsets allVerticalpx(value) => EdgeInsets.symmetric(vertical: value);
EdgeInsets allSymmetric(vertical, horizontal) =>
    EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal);
