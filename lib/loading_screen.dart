import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pp_template/splash.dart';

class loading_screen extends StatefulWidget {
  const loading_screen({Key? key}) : super(key: key);

  @override
  State<loading_screen> createState() => _loading_screenState();
}

class _loading_screenState extends State<loading_screen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder:(ctx) => const splash()));
    });


  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image: AssetImage("images/boque_logo.png"),width: 300,),
            SizedBox(height: 50,),
          SpinKitWave(
            color: Colors.pink,
            size: 50.0,
          )

          ],
        ),
      ),
    );
  }
}
