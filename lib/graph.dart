import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

class Graph extends StatelessWidget {
  final List<DateTime> data = [
    DateTime(2023, 7, 20, 10, 0), // Example DateTime objects (replace with your data)
    DateTime(2023, 7, 20, 12, 0),
    DateTime(2023, 7, 20, 14, 0),
    DateTime(2023, 7, 21, 10, 0),
    // DateTime(2023, 7, 21, 11, 0),
    // DateTime(2023, 7, 21, 12, 15),
    // DateTime(2023, 8, 21, 12, 15),
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,/// BACKGROUND COLOR 1
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
              width: 400,/// BACKGROUND COLOR 2
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.all(5.0),
              child: LineChart(
                LineChartData(
                  minX: xValue(data.first), // Minimum x-coordinate (date)
                  maxX: xValue(data.last), // Maximum x-coordinate (date)
                  minY: 0, // Minimum y-coordinate (time)
                  maxY: 24, // Maximum y-coordinate (time)
                  borderData: FlBorderData(show: true),
                  titlesData: FlTitlesData(
                    topTitles: SideTitles(showTitles: false),
                    rightTitles: SideTitles(showTitles: false),
                    leftTitles: SideTitles(
                        getTextStyles: (context, value){
                          return const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal
                          );
                        },
                        showTitles: true ),
                    bottomTitles: SideTitles(
                      getTextStyles: (context, value){
                        return const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.normal
                        );
                      },
                      showTitles: true,
                      getTitles: (value) {
                        // Convert the double value back to DateTime
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
                      belowBarData: BarAreaData(show: true, colors: [Colors.blue.withOpacity(0.4  )]),
                      colors: [Colors.white],// LINE COLOR
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}