import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controller/statistik_controller.dart';
import 'package:rcr_mobile/core.dart';
import 'package:get/get.dart';

class StatistikView extends StatelessWidget {
  const StatistikView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StatistikController>(
      init: StatistikController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            flexibleSpace: Stack(
              children: [
                Image.asset(
                  "assets/icon/bg_rcr.png",
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.14,
                ),
                Positioned(
                  top: 80,
                  left: 170,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Statistic",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              children: [
                Builder(
                  builder: (context) {
                    final List<Map> chartData = [
                      {
                        "year": 2018,
                        "sales": 40,
                      },
                      {
                        "year": 2019,
                        "sales": 90,
                      },
                      {
                        "year": 2020,
                        "sales": 30,
                      },
                      {
                        "year": 2021,
                        "sales": 80,
                      },
                      {
                        "year": 2022,
                        "sales": 90,
                      }
                    ];
                    return Container(
                      color: Theme.of(context).cardColor,
                      padding: const EdgeInsets.all(12.0),
                      child: SfCartesianChart(
                        series: <ChartSeries>[
                          AreaSeries<Map, int>(
                            dataSource: chartData,
                            xValueMapper: (Map data, _) => data["year"],
                            yValueMapper: (Map data, _) => data["sales"],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
