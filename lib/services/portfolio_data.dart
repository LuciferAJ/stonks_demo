import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PortfolioData {
  static List<Map<String, dynamic>> portfolioDummyData = [
    {
      'title': 'PayPal',
      'subtitle': 'Brooklin Simmons: Just confirming that stock prices',
      'companyLogo': 'assets/images/paypal.png',
      'profitStatus': true,
      'unreadMessages': 5,
      'profitPercentage': '↑  3.6%',
      'periodicData': PortfolioData.dailyData,
      'gradientColors': [const Color(0xffffff), const Color(0x00ff00)],
      'lineColors': [Colors.green[300]]
    },
    {
      'title': 'Twitter',
      'subtitle': 'Dianne Russel: Sell my October 1400 and take profit',
      'companyLogo': 'assets/images/twitter.png',
      'profitStatus': false,
      'unreadMessages': 3,
      'profitPercentage': '↓  1.4%',
      'periodicData': PortfolioData.weeklyData,
      'gradientColors': [const Color(0xffffff), const Color(0xff0000)],
      'lineColors': [Colors.redAccent]
    },
    {
      'title': 'Tesla',
      'subtitle': 'Ronald Richards: Tesla Accuses Rivian of Sky companies',
      'companyLogo': 'assets/images/tesla.png',
      'profitStatus': true,
      'unreadMessages': 0,
      'profitPercentage': '↑  4.1%',
      'periodicData': PortfolioData.monthly,
      'gradientColors': [const Color(0xffffff), const Color(0x00ff00)],
      'lineColors': [Colors.green[300]]
    },
    {
      'title': 'Facebook',
      'subtitle': 'Albert Flores: Wow, after lisening to the people',
      'companyLogo': 'assets/images/facebook.png',
      'profitStatus': false,
      'unreadMessages': 0,
      'profitPercentage': '↓  1.2%',
      'periodicData': PortfolioData.weeklyData,
      'gradientColors': [const Color(0xffffff), const Color(0xff0000)],
      'lineColors': [Colors.redAccent]
    },
  ];

  static List<FlSpot> dailyData = [
    FlSpot(0, 1),
    FlSpot(0.3, 1.2),
    FlSpot(0.7, 1.5),
    FlSpot(1, 2.5),
    FlSpot(1.7, 4),
    FlSpot(2, 2),
    FlSpot(2.5, 6),
    FlSpot(2.9, 5.5),
    FlSpot(3.1, 6.2),
    FlSpot(4.3, 7.1),
    FlSpot(5, 7.9),
    FlSpot(5.7, 5),
    FlSpot(6, 5.3),
    FlSpot(6.3, 8),
    FlSpot(7, 10),
  ];
  static List<FlSpot> weeklyData = [
    FlSpot(0, 1),
    FlSpot(0.3, 1.2),
    FlSpot(0.7, 1.5),
    FlSpot(1, 6.5),
    FlSpot(1.7, 4),
    FlSpot(2, 2),
    FlSpot(2.5, 8),
    FlSpot(2.9, 5.5),
    FlSpot(3.1, 9.2),
    FlSpot(4.3, 7.1),
    FlSpot(5, 7.9),
    FlSpot(5.7, 3.0),
    FlSpot(6, 5.0),
    FlSpot(6.3, 6.0),
    FlSpot(7, 4.7),
  ];
  static List<FlSpot> monthly = [
    FlSpot(0, 1),
    FlSpot(0.3, 1.2),
    FlSpot(0.7, 1.5),
    FlSpot(1, 2.5),
    FlSpot(1.7, 4),
    FlSpot(2, 2),
    FlSpot(2.5, 3.0),
    FlSpot(2.9, 2.5),
    FlSpot(3.1, 6.2),
    FlSpot(4.3, 1.1),
    FlSpot(5, 3.9),
    FlSpot(5.7, 5),
    FlSpot(6, 1.3),
    FlSpot(6.3, 0),
    FlSpot(7, 2),
  ];
  static List<Map<String, dynamic>> portfolioUser = [
    {
      'name': 'Annette Black',
      'profileImage': 'assets/images/johnDoeSample.jpg',
      'conversation':
          'Interesting. Maybe I\'ll try it again. I figured paypal was dead just waiting for someone to admit it.',
      'timeStamp': '7:56 AM',
      'emoticonReaction': false,
      'emoticons': [],
      'peopleReplies': []
    },
    {
      'name': 'Ronald Richards',
      'profileImage': 'assets/images/johnDoe2.jpg',
      'conversation': 'Especially these days',
      'timeStamp': '8:09 AM',
      'emoticonReaction': false,
      'emoticons': [],
      'peopleReplies': []
    },
    {
      'name': 'Ajaykumar Alapati',
      'profileImage': 'assets/images/johnDoe3.jpg',
      'conversation':
          'Tech Stocks up 5% holy molly. What a time to be alive. Who cares if it\'s a bubble? Ride and Roll baby!',
      'timeStamp': '2:18 PM',
      'emoticonReaction': true,
      'emoticons': [
        {'icon': '😵', 'noOfReactions': 2},
        {'icon': '🤑', 'noOfReactions': 1},
        {'icon': '😜', 'noOfReactions': 2},
      ],
      'peopleReplies': [
        {'profileImage': 'assets/images/johnDoe4.jpg'},
        {'profileImage': 'assets/images/johnDoe2.jpg'},
        {'profileImage': 'assets/images/johnDoe3.jpg'} ,
      ]
    },
    {
      'name': 'Jerome Bell',
      'profileImage': 'assets/images/johnDoe2.jpg',
      'conversation': 'Bring in the Russian money pls. Comes with Vodka',
      'timeStamp': '2:20 PM',
      'emoticonReaction': true,
      'emoticons': [
        {'icon': '🍾', 'noOfReactions': 1},
      ],
      'peopleReplies': [
        {'profileImage': 'assets/images/johnDoe4.jpg'}
      ]
    },
    {
      'name': 'Albert Flores',
      'profileImage': 'assets/images/johnDoeSample.jpg',
      'conversation':
          'Let\'s make a call here. Dictatorship. Can\'t decide by committee. It\'s ok either way guys.',
      'timeStamp': '2:24 PM',
      'emoticonReaction': false,
      'emoticons': [],
      'peopleReplies': []
    },
  ];
}
