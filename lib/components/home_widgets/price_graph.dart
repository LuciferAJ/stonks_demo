import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stonks_demo/services/portfolio_data.dart';
import 'package:stonks_demo/shared/theme_data.dart';
import 'package:stonks_demo/shared/ui_helpers.dart';

class PriceGraph extends StatefulWidget {
  @override
  _PriceGraphState createState() => _PriceGraphState();
}

class _PriceGraphState extends State<PriceGraph>
    with SingleTickerProviderStateMixin {
  List<Color> positiveGradientColors = [
    const Color(0xffffff),
    const Color(0x00ff00)
  ];
  List<Color> negativeGradientColors = [
    const Color(0xffffff),
    const Color(0xff0000)
  ];

  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this, initialIndex: 0);
    super.initState();
  }

  switchWithInt() {
    print(_tabController.index);
    switch (_tabController.index) {
      case 0:
        return periodicGraph(PortfolioData.dailyData, positiveGradientColors,
            [Colors.green[300]]);
        break;

      case 1:
        return periodicGraph(PortfolioData.weeklyData, negativeGradientColors,
            [Colors.redAccent]);
        break;

      case 2:
        return periodicGraph(
            PortfolioData.monthly, positiveGradientColors, [Colors.green[300]]);
        break;

      case 3:
        return periodicGraph(PortfolioData.dailyData, positiveGradientColors,
            [Colors.green[300]]);
        break;
      case 4:
        return periodicGraph(PortfolioData.weeklyData, negativeGradientColors,
            [Colors.redAccent]);
        break;
      case 5:
        return periodicGraph(
            PortfolioData.monthly, positiveGradientColors, [Colors.green[300]]);
        break;

      default:
        return periodicGraph(PortfolioData.weeklyData, negativeGradientColors,
            [Colors.green[300]]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: screenHeight(context) * 0.2,
          width: screenWidth(context),
          child: LineChart(
            switchWithInt(),
          ),
        ),
        Container(
          height: screenHeight(context) * 0.08,
          child: TabBar(
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelStyle: stonksTheme().textTheme.subtitle1.apply(
                  color: Colors.white,
                ),
            labelStyle: stonksTheme().textTheme.subtitle1.apply(
                  color: Colors.white,
                ),
            labelColor: Colors.white,
            controller: _tabController,
            onTap: (value) {
              setState(() {
                _tabController.index = value;
              });
            },
            tabs: <Widget>[
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _tabController.index == 0 ? Colors.green : Colors.white,
                  ),
                  child: Padding(
                      padding: allSymmetric(2.5, 5.0), child: Text('1D')),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _tabController.index == 1 ? Colors.green : Colors.white,
                  ),
                  child: Padding(
                      padding: allSymmetric(2.5, 5.0), child: Text('1W')),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _tabController.index == 2 ? Colors.green : Colors.white,
                  ),
                  child: Padding(
                      padding: allSymmetric(2.5, 5.0), child: Text('1M')),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _tabController.index == 3 ? Colors.green : Colors.white,
                  ),
                  child: Padding(
                      padding: allSymmetric(2.5, 5.0), child: Text('3M')),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _tabController.index == 4 ? Colors.green : Colors.white,
                  ),
                  child: Padding(
                      padding: allSymmetric(2.5, 5.0), child: Text('1Y')),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _tabController.index == 5 ? Colors.green : Colors.white,
                  ),
                  child: Padding(
                      padding: allSymmetric(2.5, 5.0), child: Text('ALL')),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }


}
 LineChartData periodicGraph(
periodicData, List<Color> gradientColors, List<Color> lineColor) {
return LineChartData(
gridData: FlGridData(
show: false,
),
titlesData: FlTitlesData(
show: false,
),
borderData: FlBorderData(
show: false,
border: Border.all(color: const Color(0xff37434d), width: 1)),
minX: 0,
maxX: 8.5,
minY: 0,
maxY: 12,
lineBarsData: [
LineChartBarData(
spots: periodicData,
colors: lineColor,
gradientFrom: Offset(1, 1),
curveSmoothness: 0.2,
isCurved: true,
gradientTo: Offset(-1, -1),
barWidth: 2,
isStrokeCapRound: true,
dotData: FlDotData(
show: false,
),
belowBarData: BarAreaData(
gradientFrom: Offset(0, 1),
gradientTo: Offset(0, -1),
show: true,
colors:
gradientColors.map((color) => color.withOpacity(0.3)).toList(),
),
),
],
);
}
