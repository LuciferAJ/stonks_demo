import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stonks_demo/services/portfolio_data.dart';
import 'package:stonks_demo/shared/stonks_colors.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget portfolioUser(context, portfolioIndex) => ListTile(
      contentPadding: EdgeInsets.only(left: 12.0, right: 12.0),
      isThreeLine: true,
      leading: Container(
        child: CircleAvatar(
          radius: 16,
          backgroundImage: AssetImage(
            PortfolioData.portfolioUser[portfolioIndex]['profileImage'],
          ),
        ),
      ),
      title: Row(
        children: <Widget>[
          Text(
            PortfolioData.portfolioUser[portfolioIndex]['name'],
            style: stonksTheme().textTheme.headline6,
          ),
          Padding(
            padding: allHorizontalpx(4.0),
            child: Text(
              PortfolioData.portfolioUser[portfolioIndex]['timeStamp'],
              style: stonksTheme().textTheme.caption,
            ),
          )
        ],
      ),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            PortfolioData.portfolioUser[portfolioIndex]['conversation'],
            style:
                TextStyle(fontWeight: FontWeight.normal, color: Colors.black87),
          ),
          PortfolioData.portfolioUser[portfolioIndex]['emoticonReaction']
              ? Container(
                  height: 40,
                  child: Padding(
                    padding: allVerticalpx(8.0),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: PortfolioData
                            .portfolioUser[portfolioIndex]['emoticons'].length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            emoticons(index, portfolioIndex)),
                  ),
                )
              : Container(),
          PortfolioData.portfolioUser[portfolioIndex]['peopleReplies'].length>0
              ? Row(
            mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
            height: 32,
            child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: PortfolioData
                        .portfolioUser[portfolioIndex]['peopleReplies'].length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        peopleReplies(index, portfolioIndex,context)),
          ),
                  Padding(
                    padding: const EdgeInsets.only(top:4.0, left: 10,),
                    child: Text(PortfolioData
                        .portfolioUser[portfolioIndex]['peopleReplies'].length.toString()+' replies',
                    style: stonksTheme().textTheme.headline3.apply(color: accentColor),
                    ),
                  )
                ],
              )
              : Container(),
        ],
      ),
    );
Widget emoticons(index, portfolioIndex) => Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: allSymmetric(4.0, 6.0),
          child: Text(
            PortfolioData.portfolioUser[portfolioIndex]['emoticons'][index]
                    ['icon'] +
                '  ' +
                PortfolioData.portfolioUser[portfolioIndex]['emoticons'][index]
                        ['noOfReactions']
                    .toString(),
            style: stonksTheme().textTheme.headline3.apply(color: Colors.black),
          ),
        ),
      ),
    );

Widget peopleReplies(index, portfolioIndex,context) {
return Padding(
  padding: const EdgeInsets.only(bottom:8.0),
  child:   Container(

    child: CircleAvatar(

      radius: 12,

      backgroundImage: AssetImage(

          PortfolioData

              .portfolioUser[portfolioIndex]['peopleReplies'][index]['profileImage']

      ),

    ),

  ),
);
}
