import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stonks_demo/components/portfolio_widgets/messaging_widget.dart';
import 'package:stonks_demo/components/portfolio_widgets/portfolio_user.dart';
import 'package:stonks_demo/services/portfolio_data.dart';
import 'package:stonks_demo/shared/stonks_colors.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

class PortfolioDetails extends StatefulWidget {
  final String portfolioTitle;
  PortfolioDetails(this.portfolioTitle);
  @override
  _PortfolioDetailsState createState() => _PortfolioDetailsState();
}

class _PortfolioDetailsState extends State<PortfolioDetails> {
  TextEditingController _textEditingController;
  ScrollController _scrollController = ScrollController();
  FocusNode _focus = new FocusNode();
  bool showAlertBanner = true;
  Timer _timer;
  void _startTimer() {
    _timer=Timer.periodic(Duration(seconds: 5), ((value) {
      _timer.cancel();
      setState(() {
        showAlertBanner = false;
      });
    }));
  }

  @override
  void initState() {
    _startTimer();
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0.0,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }
    _textEditingController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: primaryColor,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Flexible(
                      child: Text(
                    widget.portfolioTitle,
                    style: stonksTheme().textTheme.headline6,
                  )),
                  Padding(
                    padding: allHorizontalpx(4.0),
                    child: Icon(
                      Icons.info_outline,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: allVerticalpx(4.0),
                child: Text(
                  '87,453 members',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ),
            )
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('\$243.66',
                  style: stonksTheme()
                      .textTheme
                      .headline3
                      .apply(color: Colors.black)),
              Text('↑  3.6%',
                  style: stonksTheme()
                      .textTheme
                      .headline3
                      .apply(color: customGreen))
            ],
          ),
          Container(
            height: 10,
            width: 70,
            margin: allSymmetric(13.0, 12.00),
            child: Center(
              child: FlatButton(
                onPressed: () {},
                padding: allCustompx(0.0),
                color: customGreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text('Trade',
                        style: stonksTheme()
                            .textTheme
                            .headline6
                            .apply(color: Colors.white))),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            reverse: true,
            child: Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                verticalDirection: VerticalDirection.down,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: ListView.builder(
                        addAutomaticKeepAlives: true,
                        controller: _scrollController,
                        reverse: true,
                        itemCount:PortfolioData.portfolioUser.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: <Widget>[
                              portfolioUser(context,(PortfolioData.portfolioUser.length-1)-index),
                              ((PortfolioData.portfolioUser.length-1)-index)==1?Padding(
                                padding:allHorizontalpx(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Expanded(child: Divider(color: Colors.redAccent,)),
                                    Padding(
                                      padding: allHorizontalpx(8.0),
                                      child: Text('Unread',style: stonksTheme().textTheme.headline3.apply(color: Colors.redAccent),),
                                    ),
                                    Expanded(child: Divider(thickness: 0.5,color: Colors.redAccent,)),
                                  ],
                                ),
                              ):Container()
                            ],
                          ) ;
                            }),
                    height: _focus.hasFocus
                        ? screenHeight(context) * 0.45
                        : screenHeight(context) * 0.8,
                  ),
                  Divider(
                    thickness: 0.5,
                    height: 0,
                  ),
                  messagingWidget(context, _focus)
                ],
              ),
            ),
          ),
          showAlertBanner
              ? Container(
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
                              style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: ' days, or you will be kicked out of the stock market',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ]),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
