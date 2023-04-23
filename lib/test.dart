import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

String apiResponse="";
String _name='';
String _botanical='';
String _description = '';
String _appearance='';
String _growing_condition='';
String _culinary='';
String _health_benefits='';

//Shorties
String _sh_origin='', _sh_pests='', _sh_growing_conditions='', _sh_appearance='', _sh_health_benefits='';


class test extends StatefulWidget {
  final String plant;
  const test({Key? key, required this.plant}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
    // Future apicall()async{
    //   http.Response response;
    //   response= await http.get(Uri.parse("http://192.168.12.226:5000/plant"),
    //   headers:  {'Content-Type': 'application/json'},
    //   body: json.encode({'name' ));
    //   if(response.statusCode == 200) {
    //     setState(() {
    //       apiResponse = response.body;
    //     });
    //   }
    //   // apiResponse = 'ajksdhfhj';
    // }
  @override
  void initState() {
    apicall();
    super.initState();
  }
  Future apicall()async{
      http.Response response;
      response= await http.put(Uri.parse("http://192.168.137.226:5000/plant"),
      headers:  {'Content-Type': 'application/json'},
      body: json.encode({'name' :widget.plant}),);
      if(response.statusCode == 200) {
        setState(() {
          apiResponse = response.body;
          Map<String, dynamic> resp = json.decode(apiResponse);
          _name = resp['name'];
          _botanical = resp['botanical_name'];
          _appearance = resp['appearance'];
          _description = resp['description'];
          _sh_appearance = resp['appearance_short'];
          _sh_origin = resp['origin_short'];
          _sh_growing_conditions = resp['growing_condition_short'];
          _sh_health_benefits = resp['health_benefits_short'];
          _sh_pests = resp['pests_short'];


        });
      }
      // apiResponse = 'ajksdhfhj';
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.transparent,///////erorrr lineeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 321,
                    width: 180,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFD8EADD), Color(0xFFE9F4EE)],
                      ),
                    ),
                    child: Image.asset('images/aloe_vera.png',fit: BoxFit.fitHeight,),
                  ),
                  Container(
                    height: 320,

                    width: 180,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFE9F4EE), Color(0xFFD8EADD)],
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 13,),
                        Container(
                          height: 45,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Origin',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF909A95),fontSize: 10,),),
                              // Text(_sh_origin,textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF56805B),fontSize: 20,),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 45,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Appearance',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF909A95),fontSize: 10,),),
                              Text(_sh_appearance,textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF56805B),fontSize: 20,),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 45,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Growing Conditions',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF909A95),fontSize: 10,),),
                              Text(_sh_growing_conditions,textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF56805B),fontSize: 20,),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 45,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Health Benefits',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF909A95),fontSize: 10,),),
                              Text(_sh_health_benefits,textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF56805B),fontSize: 20,),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 45,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Pests',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF909A95),fontSize: 10,),),
                              Text(_sh_pests,textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF56805B),fontSize: 20,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 877,
                width: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/leaf_image9.jpg'),//this is image containerfnvdkjifansbifenjsbn
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.transparent.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50)//this is for borderrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
                ),
                // child: Center(child: Text(stringResponse.toString(),style: TextStyle(fontSize: 20),)),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      height: 35,
                      width: 360,
                      alignment: Alignment.centerLeft,
                      child: Text(_name,textAlign: TextAlign.center,style: GoogleFonts.oxygen(color: Color(0xFF3C3F41),fontSize: 23,),),
                    ),
                    Container(
                      height: 22,
                      width: 360,
                      color: Colors.white.withOpacity(0.5),
                      alignment: Alignment.centerLeft,
                      child: Text(_botanical,textAlign: TextAlign.center,style: GoogleFonts.ubuntu(color: Color(0xff748B9C),fontSize: 14,),),
                    ),
                    // SizedBox(height: 7,),

                    Container(
                      height: 30,
                      width: 360,
                      color: Colors.white.withOpacity(0.5),
                      child: Text(' Description',style: GoogleFonts.libreBaskerville(color: Color(0xFF2B2B2B),fontSize: 20,),),
                    ),


                      Container(
                        height: 80,
                        width: 350,
                        color: Colors.white.withOpacity(0.5),
                        child: Text('The banyan tree, also known as the Indian fig tree, is a large and majestic tree that is native to India and Pakistan. It is part of the Ficus family and is a type of strangler fig that can grow to be over 100 feet tall.',style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                        // child: Text(_description,style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                    ),
                    Container(
                      height: 30,
                      width: 350,
                      color: Colors.white.withOpacity(0.5),
                      child: Text(' Appearance',style: GoogleFonts.libreBaskerville(color: Color(0xFF2B2B2B),fontSize: 18,),),
                    ),

                    Container(
                      height: 100,
                      width: 350,
                      color: Colors.white.withOpacity(0.5),

                      // child: Text(_appearance,style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                      child: Text('The banyan tree is native to India and Pakistan, but it has since been introduced to other parts of the world, including Southeast Asia, East Asia, and the Pacific Islands.',style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                    ),

                    Container(
                      height: 30,
                      width: 360,
                      color: Colors.white.withOpacity(0.5),
                      child: Text(' Origin',style: GoogleFonts.libreBaskerville(color: Color(0xFF2B2B2B),fontSize: 18,),),
                    ),

                    Container(
                      height: 100,
                      width: 350,
                      color: Colors.white.withOpacity(0.5),

                      child: Text('The banyan tree is native to India and Pakistan, but it has since been introduced to other parts of the world, including Southeast Asia, East Asia, and the Pacific Islands.',style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                    ),

                    Container(
                      height: 30,
                      width: 360,
                      color: Colors.white.withOpacity(0.5),
                      child: Text(' Growing Conditions',style: GoogleFonts.libreBaskerville(color: Color(0xFF2B2B2B),fontSize: 18,),),
                    ),

                    Container(
                      height: 100,
                      width: 350,
                      color: Colors.white.withOpacity(0.5),

                      child: Text('Banyan trees prefer warm and humid climates and can grow in a variety of soils, including sandy and clay soils. They require full sun to partial shade and regular watering. Banyan trees are commonly found in tropical and subtropical regions.',style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                    ),

                    Container(
                      height: 30,
                      width: 360,
                      color: Colors.white.withOpacity(0.5),
                      child: Text(' Common Diseases',style: GoogleFonts.libreBaskerville(color: Color(0xFF2B2B2B),fontSize: 18,),),
                    ),

                    Container(
                      height: 80,
                      width: 350,
                      color: Colors.white.withOpacity(0.5),

                      child: Text('Banyan trees are relatively resistant to pests and diseases, but they can be susceptible to root rot and fungal infections if they are overwatered or planted in poorly drained soil.',style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                    ),

                    Container(
                      height: 30,
                      width: 360,
                      color: Colors.white.withOpacity(0.5),
                      child: Text(' Culinary Uses',style: GoogleFonts.libreBaskerville(color: Color(0xFF2B2B2B),fontSize: 18,),),
                    ),

                    Container(
                      height: 50,
                      width: 350,
                      color: Colors.white.withOpacity(0.5),

                      child: Text('The banyan tree does not have any culinary uses, as its fruit is not commonly eaten.',style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                    ),

                    Container(
                      height: 30,
                      width: 360,
                      color: Colors.white.withOpacity(0.5),
                      child: Text(' Health Benefits',style: GoogleFonts.libreBaskerville(color: Color(0xFF2B2B2B),fontSize: 18,),),
                    ),

                    Container(
                      height: 100,
                      width: 350,
                      color: Colors.white.withOpacity(0.5),

                      child: Text('The banyan tree does not have any significant health benefits, although it is considered a sacred tree in Hinduism and is often used in traditional medicine in India.',style: GoogleFonts.ubuntu(color: Color(0xFF1F1F22),fontSize: 14,),),
                    ),
                    // Container(
                    //   child: TextButton(
                    //     child: Text(
                    //       'Add a plant',
                    //       textAlign: TextAlign.center,
                    //       style: GoogleFonts.balsamiqSans(
                    //           color: Colors.black, fontSize: 19),
                    //     ),
                    //     onPressed: () {
                    //       apicall();
                    //     },
                    //   ),
                    // ),
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
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/4, size.height
        - 40, size.width/2, size.height-20);
    path.quadraticBezierTo(3/4*size.width, size.height,
        size.width, size.height-30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
