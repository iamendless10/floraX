import 'package:camera/camera.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pp_template/SearchBarScreen.dart';
import 'package:pp_template/backendapi.dart';
import 'package:pp_template/beforetest.dart';
import 'package:pp_template/bluetooth.dart';
import 'package:pp_template/profilepage.dart';
import 'package:pp_template/test.dart';
import 'package:pp_template/TakePictureScreen.dart';
import 'package:http/http.dart' as http2;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  late Future<String> _futureUsername;
  final TextEditingController _countController = TextEditingController();
  bool _countinValid = false;

  void motorFunction(String state) async
  {
    final response = await http2.get(Uri.parse(nodeUrl+'/motor/'+state));
    if(response.statusCode == 200)
      {
        print(response.body);
      }
  }

  @override
  void initState() {
    super.initState();
    _futureUsername = getUsername('test@gmail.com');
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF355E3B),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Color(0xFFDCDDDF),
      //   color: Color(0xFF355E3B),
      //   items: [
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => homescreen()),
      //         );
      //       },
      //       child: Icon(
      //         Icons.home,
      //         color: Colors.white,
      //       ),
      //     ),
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => SearchBarScreen()),
      //         );
      //       },
      //       child: Icon(
      //         Icons.search,
      //         color: Colors.white,
      //       ),
      //     ),
      //     GestureDetector(
      //       onTap: () async{
      //         // Ensure that plugin services are initialized so that `availableCameras()`
      //         // can be called before `runApp()`
      //         WidgetsFlutterBinding.ensureInitialized();
      //
      //         // Obtain a list of the available cameras on the device.
      //         final cameras = await availableCameras();
      //
      //         // Select the back camera from the list of available cameras.
      //         final camera = cameras.firstWhere(
      //               (camera) => camera.lensDirection == CameraLensDirection.back,
      //           orElse: () => throw StateError('No back camera available'),
      //         );
      //
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => TakePictureScreen(camera: camera)),
      //         );
      //       },
      //
      //       child: Icon(
      //         Icons.qr_code_scanner_rounded,
      //         color: Colors.white,
      //       ),
      //     ),
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => profile()),
      //         );
      //       },
      //       child: Icon(
      //         Icons.person,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ],
      // ),

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
            color: Color(0xFF355E3B),

            borderRadius: BorderRadius.circular(10)
        ),
        height: 60,
        width: 340,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 1),
          child: GNav(
            backgroundColor: Color(0xFF355E3B),
            color: Colors.white,
            activeColor: Color(0xff393053),
            tabBackgroundColor: Color(0xFF50C878),
            padding: EdgeInsets.all(10),
            tabs: [
              GButton(icon: Icons.home,
                gap: 9,
                text: 'Home',
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => homescreen()),
                //   );
                // },
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFDCDDDF),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/plant_leaves3.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/smile.jpg'),
                      backgroundColor: Colors.white,
                      radius: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FutureBuilder<String>(
                      future: _futureUsername,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            '   Hi, User ',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.quicksand(
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        return CircularProgressIndicator();
                      },
                    ),
                    SizedBox(height: 10,),
                    Text('       Age : 22  |  Plants : 5  |  Status : Online',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Colors.white,fontSize: 15),),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(width: 20.0, height: 100.0),
                    const Text(
                      ' Plant',
                      style: TextStyle(fontSize: 43.0,color: Color(0xFF1B262C)),
                    ),
                    const SizedBox(width: 20.0, height: 100.0),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Horizon',
                        color: Color(0xFF355E3B ),
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText(' NEW'),
                          RotateAnimatedText(' LOVE'),
                          RotateAnimatedText('DIFFERENT'),
                        ],
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                height: 400,
                width: 360,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('    Discover new plants',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF2B2B2B),fontSize: 23,),),
                    Text('    Everyday near you.',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF2B2B2B),fontSize: 23,),),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Container(
                          height: 250,
                          width: 180,
                          color: Colors.transparent,
                          child: Image.asset('images/neem.png',fit: BoxFit.fitHeight,),
                        ),
                        Container(
                          height: 320,

                          width: 180,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              SizedBox(height: 13,),
                              Container(
                                decoration:
                                BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    color: Color(0xFFADDFAD),

                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 45,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Water /day',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
                                    Text('25 L',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                decoration:
                                BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    color: Color(0xFFADDFAD),

                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 45,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Humidity',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
                                    Text('65%',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 45,
                                width: 150,
                                decoration:
                                BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    color: Color(0xFFADDFAD),

                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Category',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
                                    Text('Outdoor',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 45,
                                width: 150,
                                decoration:
                                BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    color: Color(0xFFADDFAD),

                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Avg Height',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
                                    Text('15 mtrs',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 45,
                                width: 150,
                                decoration:
                                BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    color: Color(0xFFADDFAD),

                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Care',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
                                    Text('Not needed',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                ),

              ),

              // Container(
              //   height: 80,
              //   width: 300,
              //   decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.5),
              //           spreadRadius: 2,
              //           blurRadius: 5,
              //           offset: Offset(0, 3),
              //         ),
              //       ],
              //       color: Color(0xFF355E3B),
              //       borderRadius: BorderRadius.circular(10)),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Icon(
              //         Icons.water_drop_rounded,
              //         color: Colors.white,
              //         size: 35,
              //       ),
              //       TextButton(
              //         child: Text(
              //           'Water your plants',
              //           textAlign: TextAlign.center,
              //           style: GoogleFonts.balsamiqSans(
              //               color: Colors.white, fontSize: 22),
              //         ),
              //         onPressed: () {
              //           openDialog();
              //         },
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 20,),
             SizedBox(height: 10,),
             Container(
               height: 50,
               width: double.infinity,
               color: Color(0xFFDCDDDF),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('My Land',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 20,),),
                   Text('(you have 5 plants)',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 15),),

          ],
               ),
             ) ,
              Container(
                height: 233,
                width: double.infinity,
                color: Colors.transparent,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => beforetest(plant: 'hibiscus',)),
                          );
                        },
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
                              color: Color(0xFFEDEDED),
                              borderRadius: BorderRadius.circular(50)),
                          width: 150,
                          height: 100,

                          child: Column(
                            children: [
                              Text('Hibiscus',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),
                              Image.network('https://s3.tebi.io/florax/Images/hibiscus.png'),

                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => beforetest(plant: 'mango',)),
                          );},
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
                              color: Color(0xFFEDEDED),
                              borderRadius: BorderRadius.circular(50)),
                          width: 150,
                          height: 100,
                          child: Column(
                            children: [
                              Text('Mango Tree',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),

                              Image.network('https://s3.tebi.io/florax/Images/mango_tree.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                      onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => beforetest(plant: 'rose',)),
                      );},
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
                              color: Color(0xFFEDEDED),
                              borderRadius: BorderRadius.circular(50)),
                          width: 150,
                          height: 100,
                          child: Column(
                            children: [
                              Text('Rose',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),
                              Image.network('https://s3.tebi.io/florax/Images/rose_img.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => beforetest(plant: 'tomato',)),
                          );},
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
                              color: Color(0xFFEDEDED),
                              borderRadius: BorderRadius.circular(50)),
                          width: 150,
                          height: 100,
                          child: Column(
                            children: [
                              Text('Tomato',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),
                              Image.network('https://s3.tebi.io/florax/Images/display_tomato.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Add more containers here
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xFF355E3B),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.water_drop_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    TextButton(
                      child: Text(
                        'Water your plants',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.balsamiqSans(
                            color: Colors.white, fontSize: 22),
                      ),
                      onPressed: () {
                        openDialog();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              // Container(
              //   height: 150,
              //   width: double.infinity,
              //   child: Row(
              //     mainAxisSize: MainAxisSize.min,
              //     children: <Widget>[
              //       const SizedBox(width: 20.0, height: 100.0),
              //       const Text(
              //         ' Plant',
              //         style: TextStyle(fontSize: 43.0,color: Color(0xFF1B262C)),
              //       ),
              //       const SizedBox(width: 20.0, height: 100.0),
              //       DefaultTextStyle(
              //         style: const TextStyle(
              //           fontSize: 40.0,
              //           fontFamily: 'Horizon',
              //           color: Color(0xFF355E3B ),
              //         ),
              //         child: AnimatedTextKit(
              //           animatedTexts: [
              //             RotateAnimatedText(' NEW'),
              //             RotateAnimatedText(' LOVE'),
              //             RotateAnimatedText('DIFFERENT'),
              //           ],
              //           repeatForever: true,
              //           onTap: () {
              //             print("Tap Event");
              //           },
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 400,
              //   width: 360,
              //   color: Colors.transparent,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text('    Discover new plants',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF2B2B2B),fontSize: 23,),),
              //       Text('    Everyday near you.',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF2B2B2B),fontSize: 23,),),
              //       SizedBox(height: 8,),
              //       Row(
              //         children: [
              //           Container(
              //             height: 250,
              //             width: 180,
              //             color: Colors.transparent,
              //             child: Image.asset('images/neem.png',fit: BoxFit.fitHeight,),
              //           ),
              //           Container(
              //             height: 320,
              //
              //             width: 180,
              //             color: Colors.transparent,
              //             child: Column(
              //               children: [
              //                 SizedBox(height: 13,),
              //                 Container(
              //                   decoration:
              //                   BoxDecoration(
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: Colors.black.withOpacity(0.5),
              //                           spreadRadius: 1,
              //                           blurRadius: 5,
              //                           offset: Offset(0, 3),
              //                         ),
              //                       ],
              //                       color: Color(0xFFADDFAD),
              //
              //                       borderRadius: BorderRadius.circular(10)
              //                   ),
              //                   height: 45,
              //                   width: 150,
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Text('Water /day',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
              //                       Text('25 L',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
              //                     ],
              //                   ),
              //                 ),
              //                 SizedBox(height: 10,),
              //                 Container(
              //                   decoration:
              //                   BoxDecoration(
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: Colors.black.withOpacity(0.5),
              //                           spreadRadius: 1,
              //                           blurRadius: 5,
              //                           offset: Offset(0, 3),
              //                         ),
              //                       ],
              //                       color: Color(0xFFADDFAD),
              //
              //                       borderRadius: BorderRadius.circular(10)
              //                   ),
              //                   height: 45,
              //                   width: 150,
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Text('Humidity',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
              //                       Text('65%',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
              //                     ],
              //                   ),
              //                 ),
              //                 SizedBox(height: 10,),
              //                 Container(
              //                   height: 45,
              //                   width: 150,
              //                   decoration:
              //                   BoxDecoration(
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: Colors.black.withOpacity(0.5),
              //                           spreadRadius: 1,
              //                           blurRadius: 5,
              //                           offset: Offset(0, 3),
              //                         ),
              //                       ],
              //                       color: Color(0xFFADDFAD),
              //
              //                       borderRadius: BorderRadius.circular(10)
              //                   ),
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Text('Category',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
              //                       Text('Outdoor',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
              //                     ],
              //                   ),
              //                 ),
              //                 SizedBox(height: 10,),
              //                 Container(
              //                   height: 45,
              //                   width: 150,
              //                   decoration:
              //                   BoxDecoration(
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: Colors.black.withOpacity(0.5),
              //                           spreadRadius: 1,
              //                           blurRadius: 5,
              //                           offset: Offset(0, 3),
              //                         ),
              //                       ],
              //                       color: Color(0xFFADDFAD),
              //
              //                       borderRadius: BorderRadius.circular(10)
              //                   ),
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Text('Avg Height',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
              //                       Text('15 mtrs',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
              //                     ],
              //                   ),
              //                 ),
              //                 SizedBox(height: 10,),
              //                 Container(
              //                   height: 45,
              //                   width: 150,
              //                   decoration:
              //                   BoxDecoration(
              //                       boxShadow: [
              //                         BoxShadow(
              //                           color: Colors.black.withOpacity(0.5),
              //                           spreadRadius: 1,
              //                           blurRadius: 5,
              //                           offset: Offset(0, 3),
              //                         ),
              //                       ],
              //                       color: Color(0xFFADDFAD),
              //
              //                       borderRadius: BorderRadius.circular(10)
              //                   ),
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Text('Care',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
              //                       Text('Not needed',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //
              //         ],
              //       ),
              //
              //     ],
              //   ),
              //
              // ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
  Future openDialog() => showDialog(
  context: context,
  builder: (context) => AlertDialog(
  title:  Text('Water your plants',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 20,),),
  content: TextFormField(
    controller: _countController,
  decoration: InputDecoration(
  border: OutlineInputBorder(),
  labelText: 'Enter in seconds',
    errorText: _countinValid ? 'Enter Minutes int digits' : null,
  ),
  ),
  actions: [
  TextButton(
  child:  Text('Start',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 20,),),
  onPressed: () async {

    int? _acre = int.tryParse(_countController.text.trim());
    if (_acre != null) {

      motorTiming(_acre*1000);
    }
    else
      {
        int _b=0;
      }
  },
  )
  ],
  ),
  );
}
