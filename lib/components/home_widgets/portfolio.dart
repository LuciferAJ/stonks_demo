import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stonks_demo/components/home_widgets/price_graph.dart';
import 'package:stonks_demo/screen/portfolio_detials.dart';
import 'package:stonks_demo/services/portfolio_data.dart';
import 'package:stonks_demo/shared/stonks_colors.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

Widget portfolio(context)=>
    Padding(
      padding: allSymmetric(8.0, 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Portfolio',style: stonksTheme().textTheme.headline5,),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: PortfolioData.portfolioDummyData.length,
              itemBuilder: (context,index)=>portfolioCompaniesListing(context,index)
          )
        ],
      ),
    );

Widget portfolioCompaniesListing(context,index)=>
    ListTile(
      onTap:()=> navigatorPush(context, PortfolioDetails(PortfolioData.portfolioDummyData[index]['title'])),
      dense: true,
      contentPadding: EdgeInsets.only(left: 12.0),
      leading: Container(
        height: screenHeight(context)*0.07,
        width: screenWidth(context)*0.07,
          child: Center(child: Image.asset(PortfolioData.portfolioDummyData[index]['companyLogo']))),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(PortfolioData.portfolioDummyData[index]['title'],style: stonksTheme().textTheme.headline6,),
              Padding(
                padding: allSymmetric(3.0,4.0),
                child: PortfolioData.portfolioDummyData[index]['unreadMessages']>0?Container(child: Padding(
                  padding: allHorizontalpx(5.0),
                  child: Text(PortfolioData.portfolioDummyData[index]['unreadMessages'].toString(),style: stonksTheme().textTheme.headline3.apply(color:primaryColor),),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: accentColor
                ),
                ):Icon(Icons.fiber_manual_record,color: accentColor,size: 8,),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: screenHeight(context)*0.028,
                width: screenWidth(context)*0.15,
                child: LineChart(periodicGraph(PortfolioData.portfolioDummyData[index]['periodicData'], PortfolioData.portfolioDummyData[index]['gradientColors'], PortfolioData.portfolioDummyData[index]['lineColors']),
              ),),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: PortfolioData.portfolioDummyData[index]['profitStatus']?customGreen:Colors.redAccent
                ),
                child: Padding(
                  padding: allSymmetric(1.0,8.0),
                  child: Text(PortfolioData.portfolioDummyData[index]['profitPercentage'],style: stonksTheme().textTheme.headline3.apply(color: primaryColor),),
                ),
              )
            ],
          )
        ],
      ),
      subtitle: Text(PortfolioData.portfolioDummyData[index]['subtitle'],style: PortfolioData.portfolioDummyData[index]['unreadMessages']>0?stonksTheme().textTheme.headline6:stonksTheme().textTheme.headline4,maxLines: 1,overflow: TextOverflow.ellipsis,),
    );