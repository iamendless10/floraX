import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
                                      child: Lottie.network('https://assets2.lottiefiles.com/packages/lf20_w9GTXN.json'),
                                    ),
                                    Container(
                                      height: 80,
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
                                          fontSize: 60,
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
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.network('https://assets10.lottiefiles.com/private_files/lf30_6gqfjgqh.json'),
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
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.network('https://assets7.lottiefiles.com/temp/lf20_V92Q4R.json'),
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
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_bur77wxl.json'),
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
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_hhoese47.json'),
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
                                height: 80,
                                width: 180,

                                color: Color(0xFFF7FBEC),
                                child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_nfxa6agk.json'),
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
                      //

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFDEEBBD),
                  ),
                  child: Container(
                    height: 60,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50)
                      )
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Container(
                    height: 500,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xFFDEEBBD),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50)
                        )
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 330,
                          color: Color(0xFFDEEBBD),
                          child:  Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Monstera',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFF3C3F41),fontSize: 28,),),
                            ],
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 330,
                          color: Color(0xFFDEEBBD),

                          child:  Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Monstera deliciosa',textAlign: TextAlign.center,style: GoogleFonts.exo2(color: Color(0xFF3C3F41),fontSize: 18,),),
                            ],
                          ),
                        ),
                      ],
                    ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
