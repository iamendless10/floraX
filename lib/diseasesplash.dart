import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pp_template/plantdetails.dart';
import 'package:pp_template/splash.dart';
import 'package:lottie/lottie.dart';
import 'package:pp_template/test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_template/backendapi.dart';

class diseasesplash extends StatefulWidget {
  final String path;
  const diseasesplash({Key? key, required this.path}) : super(key: key);

  @override
  State<diseasesplash> createState() => _diseasesplashState();
}

class _diseasesplashState extends State<diseasesplash> {
  @override
  void initState() {
    super.initState();
    String _ml_keyword = '';
    detectPlant(widget.path).then((result) {
      setState(() {
        _ml_keyword = result;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PlantDetails(plant: _ml_keyword)),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/ml_page2.jpg'),
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
                  child: Lottie.network('https://assets7.lottiefiles.com/packages/lf20_juote5w5.json')
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
                  Text('Detecting plamt disease and giving',textAlign: TextAlign.left,style: GoogleFonts.dosis(color: Color(0xFF2B2B2B),fontSize: 23,),),
                  Text('Cure to the disease',textAlign: TextAlign.left,style: GoogleFonts.dosis(color: Color(0xFF2B2B2B),fontSize: 23,),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

