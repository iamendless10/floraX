
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pp_template/Homescreen.dart';

import 'location.dart';

class Graph extends StatelessWidget {
  final List<DateTime> data = [
    DateTime(2023, 7, 20, 10, 0),
    DateTime(2023, 7, 20, 12, 0),
    DateTime(2023, 7, 20, 14, 0),
    DateTime(2023, 7, 21, 10, 0),
    // Add more DateTime objects here
  ];

  @override
  Widget build(BuildContext context) {
    // Function to convert DateTime to double for the x-axis (date)
    double xValue(DateTime dateTime) {
      return dateTime.millisecondsSinceEpoch.toDouble();
    }

    // Function to convert DateTime to double for the y-axis (time)
    double yValue(DateTime dateTime) {
      return dateTime.hour.toDouble() + (dateTime.minute.toDouble() / 60.0);
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 550,
            width: double.infinity,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 750,
                  width: 400,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(5.0),
                  child: LineChart(
                    LineChartData(
                      minX: xValue(data.first),
                      maxX: xValue(data.last),
                      minY: 0,
                      maxY: 24,
                      borderData: FlBorderData(show: true),
                      titlesData: FlTitlesData(
                        topTitles: SideTitles(showTitles: false),
                        rightTitles: SideTitles(showTitles: false),
                        leftTitles: SideTitles(
                          getTextStyles: (context, value) {
                            return const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            );
                          },
                          showTitles: true,
                        ),
                        bottomTitles: SideTitles(
                          getTextStyles: (context, value) {
                            return const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            );
                          },
                          showTitles: true,
                          getTitles: (value) {
                            final dateTime = DateTime.fromMillisecondsSinceEpoch(value.toInt());
                            return DateFormat('MMM d').format(dateTime);
                          },
                        ),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: data
                              .map((dateTime) => FlSpot(xValue(dateTime), yValue(dateTime)))
                              .toList(),
                          isCurved: false,
                          dotData: FlDotData(show: true),
                          belowBarData: BarAreaData(show: true, colors: [Colors.blue.withOpacity(0.4)]),
                          colors: [Colors.white], // LINE COLOR
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 235, // Set the height for the additional container
            width: double.infinity,
            color: Colors.green, // Replace this with your desired color
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    // Navigate to another screen here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(), // Replace YourDestinationScreen with the desired destination screen widget
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Elephant",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.comfortaa(
                            color: Color(0xFFffffff),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
