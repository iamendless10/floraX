import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_template/Homescreen.dart';

class bluetooth extends StatefulWidget {
  const bluetooth({Key? key}) : super(key: key);

  @override
  State<bluetooth> createState() => _bluetoothState();
}

class _bluetoothState extends State<bluetooth> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((value){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder:(ctx) => homescreen()));
    });


  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sent.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.transparent,
              child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_ylvmhzmx.json'),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Your bluetooth module',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 30),),
                  Text('has sucessfully turned on',textAlign: TextAlign.center,style: GoogleFonts.quicksand(color: Color(0xFF2B2B2B),fontSize: 30),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
