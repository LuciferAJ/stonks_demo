import 'package:flutter/material.dart';
import 'package:stonks_demo/screen/tab_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stonks Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(color:Colors.white,child: SafeArea(child: HomeTabView())),
    );
  }
}