import 'package:flutter/material.dart';
import 'package:ReviewAppAlphahood/components/index.dart';
import 'package:percent_indicator/percent_indicator.dart';
import "BarGraph.dart";

class ProfileInsights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
          children: [
            CustomAppBar(
              title: "Profile Insights",
              onBackTap: () {
                Navigator.pushNamed(context, "/dashboard");
              },
            ),
            barGraphWidget(context),
            SizedBox(height: 10),
            gaugeChartWidget(context),
            SizedBox(height: 10),
          ],
        ))));
  }

  Widget barGraphWidget(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Overview",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {},
                  color: Colors.blue[800],
                  textColor: Colors.white,
                  child: Text("Filter By".toUpperCase(),
                      style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GroupedBarChart.withSampleData(),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(children: [
                Row(
                  children: [
                    Container(
                      color: Colors.amber[700],
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Reviews Given",
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                SizedBox(width: 15),
                Row(
                  children: [
                    Container(
                      color: Colors.indigo[600],
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Profile Reach",
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                )
              ]),
            )
          ],
        ));
  }

  Widget gaugeChartWidget(context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Profile Reach",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gaugeChartSample(Colors.red, "1000", "Total Reach", 0.6),
              gaugeChartSample(Colors.green, "700", "Contact Reach", 0.4),
              gaugeChartSample(Colors.blue, "300", "Shared Reach", 0.2),
            ],
          )
        ],
      ),
    );
  }

  Widget gaugeChartSample(
      Color color, String count, String name, double percentage) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            radius: 70.0,
            lineWidth: 8.0,
            percent: percentage,
            progressColor: color,
            backgroundColor: Colors.grey[300],
          ),
          SizedBox(height: 10),
          Text(
            "$count",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          SizedBox(height: 5),
          Text(
            "$name",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ]);
  }
}
