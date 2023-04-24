import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

import 'calculate.dart';

class fertilizer extends StatelessWidget {
  const fertilizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF017765),
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.white, onPressed: (){Navigator.pop(context);},),
        title: Text('           Fertilizer Calculator',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.white,fontSize: 18,),),
        actions: [
          Row(
            children: [

            ],
          ),
        ],

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                height: 80,
                width: 380,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Select your plot size',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.black,fontSize: 18,),),
                    SizedBox(height: 5,),
                    Text('   Enter in Acre',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.grey,fontSize: 15,),),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    decoration:
                    InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter in Acre',
                        ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 330,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Express acres less than 1 as in point digits ex 0.5',textAlign: TextAlign.start,style: GoogleFonts.rowdies(color: Color(0xFFD0D1D3),fontSize: 18,),),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                height: 90,
                width: 360,
                color: Color(0xFFEFF3F8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Choose your preffered fertilizer combination according to your season',textAlign: TextAlign.start,style: GoogleFonts.prompt(color: Colors.black,fontSize: 18,),),
                  ],
                ),
              ),
              Container(
                height: 580,
                width: 355,
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => calculate()),
                        );
                      },
                      child: Container(
                        height: 100,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea 50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Potassium 30-50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => calculate()),
                        );
                      },
                      child: Container(
                        height: 100,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea 50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Potassium 30-50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => calculate()),
                        );
                      },
                      child: Container(
                        height: 100,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea 50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Potassium 30-50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => calculate()),
                        );
                      },
                      child: Container(
                        height: 100,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea 50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Potassium 30-50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => calculate()),
                        );
                      },
                      child: Container(
                        height: 100,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea 50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Potassium 30-50%',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
