import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pp_template/plantdetails.dart';
import 'package:pp_template/splash.dart';
import 'package:lottie/lottie.dart';
import 'package:pp_template/test.dart';
import 'package:google_fonts/google_fonts.dart';

class beforetest extends StatefulWidget {
  const beforetest({Key? key}) : super(key: key);

  @override
  State<beforetest> createState() => _beforetestState();
}

class _beforetestState extends State<beforetest> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder:(ctx) => PlantDetails(plant: 'banana',)));
    });


  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/leaf_image11.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 260,
              width: double.infinity,
              color: Colors.transparent,
            ),
            Center(
              child: Container(
                color: Colors.transparent,
                height: 180,
                width: 200,
                child: Lottie.asset('lottie/plantsplash.json',),
              ),
            ),
            SizedBox(height: 22,),
             Container(
              height: 60,
              width: double.infinity,
              color: Colors.transparent,
               child: Column(
                 children: [
                   // Text('    உங்கள் தாவரத் தகவலை நாங்கள்உங்கள்',textAlign: TextAlign.left,style: GoogleFonts.notoSansTamil(color: Color(0xFF2B2B2B),fontSize: 15,),),
                   // Text('    தாவரத் தகவலை நாங்கள்',textAlign: TextAlign.left,style: GoogleFonts.notoSansTamil(color: Color(0xFF2B2B2B),fontSize: 15,),),
                   // Text('    சேகரிக்கும் வரை காத்திருங்கள்',textAlign: TextAlign.left,style: GoogleFonts.notoSansTamil(color: Color(0xFF2B2B2B),fontSize: 15,),),
                   Text('    Hold on while we gather your',textAlign: TextAlign.left,style: GoogleFonts.dosis(color: Color(0xFF2B2B2B),fontSize: 23,),),
                   Text('    plant information...',textAlign: TextAlign.left,style: GoogleFonts.dosis(color: Color(0xFF2B2B2B),fontSize: 23,),),
                 ],
               ),
            ),
          ],
        ),
      ),
    );
  }
}

