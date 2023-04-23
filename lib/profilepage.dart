import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:pp_template/contactus.dart';

import 'Homescreen.dart';
import 'SearchBarScreen.dart';
import 'TakePictureScreen.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
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
            color: Color(0xFFC3999A),

            borderRadius: BorderRadius.circular(10)
        ),
        height: 60,
        width: 340,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 1),
          child: GNav(
            backgroundColor: Color(0xFFC3999A),
            color: Colors.white,
            activeColor: Color(0xff393053),
            tabBackgroundColor: Color(0xFFD0BBBA),
            padding: EdgeInsets.all(10),
            tabs: [
              GButton(icon: Icons.home,
                gap: 9,
                text: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homescreen()),
                  );
                },
              ),
              GButton(icon: Icons.search,
                text: 'Search',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchBarScreen()),
                  );
                },
              ),
              GButton(icon: Icons.qr_code_scanner,
                text: 'Scan',
                onPressed: () async{
                  // Ensure that plugin services are initialized so that `availableCameras()`
                  // can be called before `runApp()`
                  WidgetsFlutterBinding.ensureInitialized();

                  // Obtain a list of the available cameras on the device.
                  final cameras = await availableCameras();

                  // Select the back camera from the list of available cameras.
                  final camera = cameras.firstWhere(
                        (camera) => camera.lensDirection == CameraLensDirection.back,
                    orElse: () => throw StateError('No back camera available'),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TakePictureScreen(camera: camera)),
                  );
                },
              ),
              GButton(icon: Icons.person_outline_rounded,
                text: 'Profile',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profile()),
                  );
                },
              ),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFC3999A),
        automaticallyImplyLeading: false,
        leading: CircleAvatar(
            backgroundColor: Color(0xFFD0C0C0),
            child: IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Color(0xFF2B2B2B), onPressed: (){Navigator.pop(context);},)),
        title: Text('                  Profile',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Color(0xFF2B2B2B),fontSize: 18,),),
        actions: [
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     IconButton(
          //       icon: Icon(Icons.search),
          //       onPressed: () {
          //         // Do something when the search icon is pressed
          //       },
          //     ),
          //   ],
          // ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFD0C0C0),
                child: IconButton(
                  icon: Icon(Icons.thumb_up_off_alt_sharp,color: Color(0xFF2B2B2B),),
                  onPressed: () {
                    // Do something when the settings icon is pressed
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                width: 380,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 100,),
                    Container(
                      height: 150,
                      width: 380,
                      color: Colors.transparent,
                      child: CircleAvatar(
                        child: Lottie.asset('lottie/profile_avatar.json'),
                        // backgroundImage: AssetImage('images/profile3.png'),
                        backgroundColor: Colors.white,
                        radius: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 90,
                width: 380,
                color: Colors.white,
                child: Column(
                  children: [
                    Text('Alexa',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 35),),
                    Text('Farmer',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 20),),
                  ],
                ),
              ),
              Container(
                height: 500,
                width: 380,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 320,
                      decoration:
                      BoxDecoration(
                        color: Color(0xFFC3A8A1),
                        borderRadius: BorderRadius.circular(30),),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => contactus()),
                          );
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 100,
                              color: Colors.transparent,
                              child: Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 120,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Contact Us',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 20),),
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 100,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                   Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 320,
                      decoration:
                      BoxDecoration(
                        color: Color(0xFFC3A8A1),
                        borderRadius: BorderRadius.circular(30),),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => profile()),
                          );
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 100,
                              color: Colors.transparent,
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 120,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('About Us',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 20),),
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 100,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 320,
                      decoration:
                      BoxDecoration(
                        color: Color(0xFFC3A8A1),
                        borderRadius: BorderRadius.circular(30),),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => profile()),
                          );
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 100,
                              color: Colors.transparent,
                              child: Icon(
                                Icons.qr_code_scanner_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 120,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Plant Detecter',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 20),),
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 100,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 320,
                      decoration:
                      BoxDecoration(
                        color: Color(0xFFC3A8A1),
                        borderRadius: BorderRadius.circular(30),),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 100,
                            color: Colors.transparent,
                            child: Icon(
                              Icons.calculate_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 120,
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Fertilizer Calc.',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 20),),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 100,
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
