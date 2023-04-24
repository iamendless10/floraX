import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class calculate extends StatelessWidget {
  const calculate({Key? key}) : super(key: key);

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
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFE7DECC),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(' For 2 acres of land we would prefer',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 28,),),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFE7DECC),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Urea',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 28,),),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFE7DECC),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Urea quantitiy...',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 28,),),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFE7DECC),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Potassium',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 28,),),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFE7DECC),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Potassium quantity....',textAlign: TextAlign.center,style: GoogleFonts.oswald(color: Color(0xFF2B2B2B),fontSize: 28,),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
