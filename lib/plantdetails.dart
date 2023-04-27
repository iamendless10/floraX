import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import 'package:pp_template/backendapi.dart';
import 'dart:convert';
import 'package:pp_template/information.dart';

class PlantDetails extends StatefulWidget {
  final Map<String, dynamic> resp;
  const PlantDetails({Key? key, required this.resp}) : super(key: key);

  @override
  _PlantDetailsState createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  Map<String, dynamic> resp_weather ={};
  @override
  void initState() {
    getWeatherInfo();
    super.initState();
  }

  void getWeatherInfo () async
  {
    final response = await http.get(Uri.parse(nodeUrl+'/data'));
    if(response.statusCode == 200)
      {
        setState(() {
          resp_weather = json.decode(response.body);
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE5EADA),
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        flexibleSpace: FlexibleSpaceBar(
          background:Container(
            height: 200,
            width: 380,
            color: Color(0xFFE5EADA),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               Container(
                 child: Column(
                   children: [
                     SizedBox(height: 30,),
                     IconButton(
                        icon: Icon(Icons.thermostat,color: Colors.black,),
                        onPressed: () {
                        },
                      ),
                     Text(resp_weather['temp'] ?? "unknown",textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Colors.black,fontSize: 15,),),
                   ],
                 ),
               ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      IconButton(
                        icon: Icon(Icons.water_drop_rounded,color: Colors.black,),
                        onPressed: () {
                        },
                      ),
                      Text(resp_weather['humidity'] ?? 'Unknown',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Colors.black,fontSize: 15,),),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      IconButton(
                        icon: Icon(Icons.cloud_rounded,color: Colors.black,),
                        onPressed: () {
                        },
                      ),
                      Text(resp_weather['weather'] ?? 'Unknown',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Colors.black,fontSize: 15,),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 380,
                  color: Color(0xFFDEEBBD),
                ),
                Container(
                  height: 50,
                  width: 380,
                  // color: Color(0xFFDEEBBD),
                  color: Color(0xFFDEEBBD),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.resp['display_name'] ?? 'Unknown',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.josefinSans(
                          color: Color(0xFF000000),
                          fontSize: 43,
                          fontWeight: FontWeight.bold, // Add this line
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Color(0xFFDEEBBD),
                  child: Column(
                    children: [
                      Text(widget.resp['botanical_name'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFF3C3F41),fontSize: 22,),),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(60),
                    ),
                    color: Color(0xFFDEEBBD),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFDEEBBD),
                  ),
                  child: Container(
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  height: 80,
                  width: 380,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Recomended',textAlign: TextAlign.center,style: GoogleFonts.catamaran(color: Colors.black,fontSize: 30,),),
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 380,
                  color: Colors.white,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 180,

                                      color: Color(0xFFF7FBEC),
                                      child: Lottie.asset('lottie/plant_water.json'),
                                    ),
                                    Container(
                                      height: 80,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                          color: Color(0xFFF7FBEC)),

                                      child: Center(
                                          child: Text(
                                            widget.resp['water_per_day'] ?? 'Unknown',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.cabin(
                                              color: Color(0xFF5C5C5C),
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Water / Day',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_sun.json'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        widget.resp['sunlight_per_day'] ?? 'Unknown',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Sunlight / Day',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_temp.json'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        widget.resp['temp'] ?? 'Unknown',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Tempr.',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_humidity.json'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        widget.resp['humidity'] ?? 'Unknown',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Humidity',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_fertilizer.json'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        widget.resp['fertilizer'] ?? "Unknown",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Fertilizer / HA',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_next_watering.json'),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        '2Days',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Next Watering',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //

                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 380,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Your Land details',textAlign: TextAlign.center,style: GoogleFonts.catamaran(color: Colors.black,fontSize: 30,),),
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 380,
                  color: Colors.white,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 180,

                                      color: Color(0xFFF7FBEC),
                                      child: Lottie.asset('lottie/plant_water.json'),
                                    ),
                                    Container(
                                      height: 80,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                          color: Color(0xFFF7FBEC)),

                                      child: Center(
                                          child: Text(
                                            widget.resp['water_per_day'] ?? 'Unknown',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.cabin(
                                              color: Color(0xFF5C5C5C),
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Water / Day',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_sun.json'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        widget.resp['sunlight_per_day'] ?? 'Unknown',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Sunlight / Day',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_temp.json'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        widget.resp['temp'] ?? 'Unknown',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Tempr.',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_humidity.json'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        widget.resp['humidity'] ?? 'Unknown',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Humidity',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_fertilizer.json'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        widget.resp['fertilizer'] ?? "Unknown",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Fertilizer / HA',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color(0xFFF7FBEC),
                              borderRadius: BorderRadius.circular(30)),
                          width: 180,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.asset('lottie/plant_next_watering.json'),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        '2Days',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7FBEC),
                                ),
                                child: Container(
                                  height: 44,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                                      color: Color(0xFF5D8233)),
                                  child: Text('Next Watering',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    height: 37,
                    width: 380,
                  ),
                ),
                Container(
                  height: 270,
                  width: 380,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 330,
                        color: Colors.white,
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.resp['display_name'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.comfortaa(color: Color(0xFF3C3F41),fontSize: 38,),),
                          ],
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 330,
                        color: Colors.white,
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.resp['botanical_name'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFF3C3F41),fontSize: 18,),),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        height: 170,
                        width: 330,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.resp['description'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFF3C3F41),fontSize: 18,),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 360,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFE8F4F2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.thermostat,color: Colors.black,),

                            Text('    Minimum ' + (widget.resp['temp'] ?? ''), textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Color(0xFF3C3F41),fontSize: 13,),),
                          ],
                        ),
                      ),
                      SizedBox(width: 40,),
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFE8F4F2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.water_drop_rounded,color: Colors.black,),
                            Text('     Every 3 days',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Color(0xFF3C3F41),fontSize: 13,),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 360,
                  color: Colors.white,
                ),
                Container(
                  height: 110,
                  width: 360,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 110,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Color(0xff5D9C59),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                            )
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('      '),
                            Icon(Icons.bar_chart,color: Color(0xFFFFFFFF),),
                            Text('   Statistics',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Color(0xFFFFFFFF),fontSize: 18,),),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => information(resp: widget.resp,)),
                          );
                        },
                        child: Container(
                          height: 110,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                              )
                          ),
                          child: Row(
                            children: <Widget>[
                              Text('      '),
                              Icon(Icons.info_rounded,color: Color(0xFF202024),),
                              Text('   Information',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Color(0xFF202024),fontSize: 18,),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 340 - 150,
              left: 150 - 150,
              child: Container(
                height: 400,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: NetworkImage(widget.resp['image']),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}