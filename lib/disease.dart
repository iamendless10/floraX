import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class disease extends StatelessWidget {
  const disease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF017765),
      //   automaticallyImplyLeading: false,
      //   leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.white, onPressed: (){Navigator.pop(context);},),
      //   title: Text('                  Disease',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.white,fontSize: 18,),),
      //   actions: [
      //     Row(
      //       children: [
      //
      //       ],
      //     ),
      //   ],
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                width: 380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/dis.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFF009285),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  About',textAlign: TextAlign.center,style: GoogleFonts.nunito(color: Color(0xFFF5F5F5),fontSize: 23),),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFF009285),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(' Monstera is a tropical plant native to Central and South America, prized for its large, perforated leaves and unique appearance. It is a popular houseplant and is believed to bring good luck and prosperity',textAlign: TextAlign.center,style: GoogleFonts.nunito(color: Color(0xFFF5F5F5),fontSize: 16),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFF009285),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Symptoms',textAlign: TextAlign.center,style: GoogleFonts.nunito(color: Color(0xFFF5F5F5),fontSize: 23),),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFF009285),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Monstera is a tropical plant native to Central and South America, prized for its large, perforated leaves and unique appearance. It is a popular houseplant and is believed to bring good luck and prosperity',textAlign: TextAlign.center,style: GoogleFonts.nunito(color: Color(0xFFF5F5F5),fontSize: 16),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFF009285),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  To Cure',textAlign: TextAlign.center,style: GoogleFonts.nunito(color: Color(0xFFF5F5F5),fontSize: 23),),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFF009285),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Monstera is a tropical plant native to Central and South America, prized for its large, perforated leaves and unique appearance. It is a popular houseplant and is believed to bring good luck and prosperity',textAlign: TextAlign.center,style: GoogleFonts.nunito(color: Color(0xFFF5F5F5),fontSize: 16),),
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
