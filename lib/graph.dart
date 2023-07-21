import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pp_template/backendapi.dart';
import 'location.dart';

class Graph extends StatefulWidget {
  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  Map<String, dynamic> resp = {};
  List<Map<String, dynamic>> data = []; // Updated data list

  void getLogs() async {
    final response = await http.get(Uri.parse(apiUrl + '/logs'));
    if (response.statusCode == 200) {
      setState(() {
        data = List<Map<String, dynamic>>.from(json.decode(response.body));
      });
    }
  }

  DateTime convertUtcToIst(DateTime utcDateTime) {
    // UTC+5:30 is Indian Standard Time (IST)
    return utcDateTime.add(const Duration(hours: 5, minutes: 30));
  }

  double xValue(Map<String, dynamic> entry) {
    final utcDateTime = DateTime.parse(entry['datetime']['\$date']);
    final istDateTime = convertUtcToIst(utcDateTime);

    return istDateTime.millisecondsSinceEpoch.toDouble();
  }

  double yValue(Map<String, dynamic> entry) {
    final utcDateTime = DateTime.parse(entry['datetime']['\$date']);
    final istDateTime = convertUtcToIst(utcDateTime);

    return istDateTime.hour.toDouble() + (istDateTime.minute.toDouble() / 60.0);
  }



  @override
  void initState() {
    super.initState();
    getLogs(); // Fetch data when the widget is created
  }

  @override
  Widget build(BuildContext context) {
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
                      minX: data.isNotEmpty ? xValue(data.first) : 0,
                      maxX: data.isNotEmpty ? xValue(data.last) : 0,
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
                              .map((entry) => FlSpot(xValue(entry), yValue(entry)))
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
