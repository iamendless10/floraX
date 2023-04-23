import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pp_template/SearchBarScreen.dart';
import 'package:pp_template/backendapi.dart';
import 'package:pp_template/beforetest.dart';
import 'package:pp_template/test.dart';
import 'package:pp_template/TakePictureScreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  late Future<String> _futureUsername;

  @override
  void initState() {
    super.initState();
    _futureUsername = getUsername('test@gmail.com');
  }

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
                    MaterialPageRoute(builder: (context) => test(plant: 'Apple',)),
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
                    image: AssetImage('images/pink_flowers.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/profile5.webp'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    FutureBuilder<String>(
                      future: _futureUsername,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            '   Hi, ${snapshot.data}',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.quicksand(
                              color: Color(0xFF0C3D33),
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
                    Text('       Age : 22  |  Plants : 5  |  Status : Online',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 15),),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
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
                    color: Color(0xFFC9A9AA),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    TextButton(
                      child: Text(
                        'Add a plant',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.balsamiqSans(
                            color: Colors.white, fontSize: 19),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homescreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
             SizedBox(height: 10,),
             Container(
               height: 50,
               width: double.infinity,
               color: Color(0xFFDCDDDF),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('My Garden',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 20,),),
                   Text('(you have 5 plants)',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 15),),

          ],
               ),
             ) ,
              Container(
                height: 233,
                width: double.infinity,
                color: Colors.transparent,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => beforetest(plant: 'tomato',)),
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
                              Text('Monstera',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),
                              Image.asset('images/monstera.png'),

                            ],
                          ),
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
                            color: Color(0xFFEDEDED),
                            borderRadius: BorderRadius.circular(50)),
                        width: 150,
                        height: 100,
                        child: Column(
                          children: [
                            Text('Money Plant',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),

                            Image.asset('images/plant_money.png'),
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
                            color: Color(0xFFEDEDED),
                            borderRadius: BorderRadius.circular(50)),
                        width: 150,
                        height: 100,
                        child: Column(
                          children: [
                            Text('Kuchi Plant',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),
                            Image.asset('images/plant_4_new.png'),
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
                            color: Color(0xFFEDEDED),
                            borderRadius: BorderRadius.circular(50)),
                        width: 150,
                        height: 100,
                        child: Column(
                          children: [
                            Text('Snake plant',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),
                            Image.asset('images/plant_5.png'),
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
                            color: Color(0xFFEDEDED),
                            borderRadius: BorderRadius.circular(50)),
                        width: 150,
                        height: 100,
                        child: Column(
                          children: [
                            Text('Grass',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),
                            Image.asset('images/bg_removed.png',fit: BoxFit.cover,),
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
                            color: Color(0xFFEDEDED),
                            borderRadius: BorderRadius.circular(50)),
                        width: 150,
                        height: 130,
                        child: Column(
                          children: [
                            Text('Plant',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 18,),),
                            Image.asset('images/plant_spread.png',fit: BoxFit.fitWidth,),
                          ],
                        ),
                      ),
                    ),
                    // Add more containers here
                  ],
                ),
              ),
              SizedBox(height: 10,),
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
                        color: Color(0xFFDBA39A),
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
                                    color: Color(0xFFD9ADAD),

                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 45,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Water /day',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
                                    Text('0.1 ML',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
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
                                    color: Color(0xFFD9ADAD),

                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 45,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Humidity',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
                                    Text('17%',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
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
                                    color: Color(0xFFD9ADAD),

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
                                    color: Color(0xFFD9ADAD),

                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Avg Height',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 10,),),
                                    Text('5-6 ft',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF202123),fontSize: 20,),),
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
                                    color: Color(0xFFD9ADAD),

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
              SizedBox(height: 10,),
              Container(
                height: 810,
                width: 330,
                decoration:
                BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3.5,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xFFDCDDDF),

                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Plant Name',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 22,),),
                    Text('Neem',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Color(0xFF1A1A1A),fontSize: 27,),),
                    Column(
                      children: [
                        SizedBox(height: 12,),
                        Text('Neem trees can reach 15–30 metres (49–98 feet) in height and have attractive rounded crowns and thick furrowed bark. The compound leaves have toothed leaflets and are typically evergreen but do drop during periods of extreme drought. The small fragrant white flowers are bisexual or staminate (male) and are borne in clusters in the axils of the leaves. The fruit is a smooth yellow-green drupe and has a sweet-flavoured pulp.',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 16,),)
                      ],
                    ),
                    Text('DISEASES OF NEEM (Azadirachta indica)',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 22,),),
                    Column(
                      children: [
                        SizedBox(height: 12,),
                        Text('Leaf Web Blight:',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize: 19,),),
                        Text('It is caused by Rhizoctonia solani.  The disease appears in the nursery after the regular monsoon rains',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 16,),),
                        SizedBox(height: 55,),
                        Text('Alternaria Leaf spot and blight:',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize: 19,),),
                        Text('It is caused by Alternaria alternata. It is a destructive pathogen. It appears late in the growing season in the last week of October or early November at New Forest, Dehra Dun (Mehrotra and Pandey, 1992).  It attacks the leaves when the leaves become old and contain less soluble sugars.',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Color(0xFF4D4E52),fontSize: 16,),),



                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 600,
                width: 330,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'About',
                              style: GoogleFonts.raleway(color: Colors.black,fontSize: 45)
                          ),
                          TextSpan(
                              text: 'US',
                              style:
                              GoogleFonts.raleway(color: Colors.white,fontSize: 45,)
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(' Our mobile app is designed to revolutionize the world of plant care and maintenance by using advanced technologies such as machine learning and computer vision to identify plants and provide users with essential information on their care. By leveraging the power of AI, the app will enable users to take a photo of a plant and instantly receive accurate information on its species, ideal growing conditions, and necessary maintenance. Which part of the plant is edible to consume and if the plant is poisonous or not also it can be used by students to learn about the plant features, And if the particular user tries to identify a plant which grows in a dense forest area the app will send a signal of their particular location to the  us and we could reach out them if they need any help. This app completely works in OFFLINE mode. If the user uses this app for agriculture purpose. Then the app will show the recommend crops for this temperature,humidity,and it also shows weather report. Additionaly it shows some common diseases which they could acquire at a particular season by the particular plant.',textAlign: TextAlign.center,style: GoogleFonts.raleway(color: Color(0xFF3C3F41),fontSize: 16,),),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 330,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Contact',
                              style: GoogleFonts.raleway(color: Colors.white,fontSize: 45)
                          ),
                          TextSpan(
                              text: 'US',
                              style:
                              GoogleFonts.raleway(color: Colors.black,fontSize: 45,)
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('We would love to hear from you! If you have any questions, comments, or feedback regarding our products or services, please dont hesitate to get in touch with us. You can reach us by phone, email, or by using the contact form below',textAlign: TextAlign.center,style: GoogleFonts.raleway(color: Color(0xFF3C3F41),fontSize: 16,),),
                    SizedBox(height: 15,),
                    Text('We strive to respond to all inquiries as quickly as possible, but please allow up to 48 hours for a response. Thank you for your interest in our company, and we look forward to hearing from you!',textAlign: TextAlign.center,style: GoogleFonts.raleway(color: Color(0xFF3C3F41),fontSize: 16,),),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 330,
                color: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook_rounded,size: 50,color: Colors.blue,),
                    SizedBox(width: 10,),
                    Icon(Icons.email_rounded,size: 50,color: Color(0xFF3C3F41),),
                    SizedBox(width: 10,),
                    Icon(Icons.call,size: 50,color: Colors.green,),
                    SizedBox(width: 10,),
                    Icon(Icons.whatshot_rounded,size: 50,color: Colors.orange,),
                    SizedBox(width: 10    ,),
                    Icon(Icons.telegram,size: 50,color: Color(0xFF32A7D9),),
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
