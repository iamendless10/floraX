import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_template/homescreen.dart';
import 'package:lottie/lottie.dart';
import 'package:pp_template/logintest.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 850,
        width: 360,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 250,
              width: 360,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80,),
                  Text('\n\n\nWelcome to',textAlign: TextAlign.center,style: GoogleFonts.gruppo(color: Colors.black,fontSize: 35),),
                  // SizedBox(height: 10,),
                ],
              ),
            ),
            Container(
              height: 130,
              width: 360,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Flora',
                            style: GoogleFonts.goldman(color: Colors.green,fontSize: 84)
                        ),
                        TextSpan(
                            text: 'X',
                            style:
                            GoogleFonts.tangerine(color: Colors.black,fontSize: 92)
                        ),
                      ],
                    ),
                  )
                ],
              ),

            ),
            Container(
              height: 258,
              width: 360,
              color: Colors.white,
              child: Lottie.asset('lottie/splash.json'),
            ),
            Container(
              height: 80,
              width: 360,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 280,
                    decoration:
                    BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        color: Colors.green,

                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(
                      child: Text('PLANT WITH US!',textAlign: TextAlign.center,style: GoogleFonts.balsamiqSans(color: Colors.white,fontSize: 16),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginDemo()),
                        );
                      },
                    ),
                  ),

                ],
              )
            ),
            Container(
              height: 40,
              width: 360,
              color: Colors.white,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('By tapping "plant with us!" and using florax app, you are agreeing to our terms of service and privacy policy',textAlign: TextAlign.center,style: GoogleFonts.philosopher(color: Colors.black,fontSize: 10),),
                  Text('All rights reserved.',textAlign: TextAlign.center,style: GoogleFonts.philosopher(color: Colors.black,fontSize: 10),),
                ],
              ),
            )



          ]
          ,
        ),
      ),
    );
  }
}

