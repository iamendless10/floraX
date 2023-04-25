import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class disease2 extends StatefulWidget {
  final String disease;
  const disease2({Key? key, required this.disease}) : super(key: key);
  @override
  _disease2State createState() => _disease2State();
}
class _disease2State extends State<disease2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF44694B),
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.white, onPressed: (){Navigator.pop(context);},),
        title: Text('           ' + widget.disease ?? "Disease",textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.white,fontSize: 18,),),
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
        color: Colors.black,
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            width: 360,
            color: Color(0xFFF7FBEC),
            child: Column(
              children: <Widget>[
                Container(
                  height: 350,
                  width: 380,
                  color: Color(0xFF8CA18D),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 220,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage('images/dis.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  width: 380,
                  color: Color(0xFFE5EADA),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 290,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFF97A485),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 250,
                                color: Colors.transparent,
                                child: Text("About",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFFF9F9F9),fontSize: 25,),),
                              ),
                              Container(
                                height: 230,
                                width: 280,
                                color: Colors.transparent,
                                child: Text("This fungal disease of roses is usually a problem in California only in foggy or humid coastal areas. It can occur anywhere leaves commonly remain wet, such as where roses are sprinkler irrigated during the evening or night.",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFFF9F9F9),fontSize: 18,),),
                              ),
                              Container(
                                height: 150,
                                width: 280,
                                color: Colors.transparent,
                                child: Lottie.asset('lottie/disease_about.json'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 290,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFF97A485),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 250,
                                color: Colors.transparent,
                                child: Text(" Symptoms",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFFF9F9F9),fontSize: 25,),),
                              ),
                              Container(
                                height: 230,
                                width: 280,
                                color: Colors.transparent,
                                child: Text("This fungal disease of roses is usually a problem in California only in foggy or humid coastal areas. It can occur anywhere leaves commonly remain wet, such as where roses are sprinkler irrigated during the evening or night.",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFFF9F9F9),fontSize: 18,),),
                              ),
                              Container(
                                height: 150,
                                width: 280,
                                color: Colors.transparent,
                                child: Lottie.asset('lottie/disease_symptoms.json'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 290,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFF97A485),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 250,
                                color: Colors.transparent,
                                child: Text(" Solution",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFFF9F9F9),fontSize: 25,),),
                              ),
                              Container(
                                height: 230,
                                width: 280,
                                color: Colors.transparent,
                                child: Text("This fungal disease of roses is usually a problem in California only in foggy or humid coastal areas. It can occur anywhere leaves commonly remain wet, such as where roses are sprinkler irrigated during the evening or night.",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFFF9F9F9),fontSize: 18,),),
                              ),
                              Container(
                                height: 150,
                                width: 280,
                                color: Colors.transparent,
                                child: Lottie.asset('lottie/disease_symptoms.json'),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                // Container(
                //   height: 50,
                //   width: 300,
                //   decoration: BoxDecoration(
                //       color: Color(0xFFE7DECC),
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(30),
                //       topRight: Radius.circular(30),
                //     )
                //   ),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('  Disease',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,),),
                //     ],
                //   ),
                // ),
                // Container(
                //   height: 250,
                //   width: 300,
                //   decoration: BoxDecoration(
                //       color: Color(0xFFE7DECC),
                //     borderRadius: BorderRadius.only(
                //       bottomRight: Radius.circular(30),
                //       bottomLeft: Radius.circular(30),
                //     )
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('This fungal disease of roses is usually a problem in California only in foggy or humid coastal areas. It can occur anywhere leaves commonly remain wet, such as where roses are sprinkler irrigated during the evening or night.',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,),),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 20,),
                // Container(
                //   height: 50,
                //   width: 300,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(30),
                //         topRight: Radius.circular(30),
                //       )
                //   ),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('  Symptoms',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,),),
                //     ],
                //   ),
                // ),
                // Container(
                //   height: 250,
                //   width: 300,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.only(
                //         bottomRight: Radius.circular(30),
                //         bottomLeft: Radius.circular(30),
                //       )
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('This fungal disease of roses is usually a problem in California only in foggy or humid coastal areas. It can occur anywhere leaves commonly remain wet, such as where roses are sprinkler irrigated during the evening or night.',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,),),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 20,),
                // Container(
                //   height: 50,
                //   width: 300,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(30),
                //         topRight: Radius.circular(30),
                //       )
                //   ),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('  Solution',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,),),
                //     ],
                //   ),
                // ),
                // Container(
                //   height: 250,
                //   width: 300,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.only(
                //         bottomRight: Radius.circular(30),
                //         bottomLeft: Radius.circular(30),
                //       )
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('This fungal disease of roses is usually a problem in California only in foggy or humid coastal areas. It can occur anywhere leaves commonly remain wet, such as where roses are sprinkler irrigated during the evening or night.',textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,),),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
