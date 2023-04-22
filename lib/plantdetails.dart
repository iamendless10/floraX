import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'Monstera',
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
                      Text('Monstera deliciosa',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFF3C3F41),fontSize: 22,),),
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
                  height: 220,
                  width: 380,
                  color: Colors.white,
                  child: ListView(
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
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 160,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                    '10 %',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.cabin(
                                      color: Color(0xFF5C5C5C),
                                      fontSize: 50,
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
                                  child: Text('Water Required',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
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
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 160,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        '74 %',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 50,
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
                                  child: Text('Light',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
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
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 160,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        '34 .C',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 50,
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
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 160,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        '19 %',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 50,
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
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 160,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        '12 %',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 50,
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
                                  child: Text('Fertilizer',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFFFFFFFF),fontSize: 22,),),
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
                                decoration: BoxDecoration(
                                  color: Color(0xff5D8233),
                                ),
                                child: Container(
                                  height: 160,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                                      color: Color(0xFFF7FBEC)),
                                  child: Center(
                                      child: Text(
                                        '2D Aprx.',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cabin(
                                          color: Color(0xFF5C5C5C),
                                          fontSize: 50,
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
                      // Add more containers here
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
                    image: AssetImage('images/monstera.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                // child: ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: <Widget>[
                //     Container(
                //       height: 200,
                //       width: 200,
                //       color: Colors.blue,
                //       margin: EdgeInsets.all(10),
                //     ),
                //     Container(
                //       height: 200,
                //       width: 200,
                //       color: Colors.red,
                //       margin: EdgeInsets.all(10),
                //     ),
                //     Container(
                //       height: 200,
                //       width: 200,
                //       color: Colors.green,
                //       margin: EdgeInsets.all(10),
                //     ),
                //   ],
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
