import 'package:flutter/material.dart';
import 'package:pp_template/homescreen.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_template/signintest.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login_image3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100,),
              Container(
                  width: 200,
                  height: 250,
                  color: Colors.transparent,
                  child: Lottie.network('https://assets10.lottiefiles.com/packages/lf20_NODCLWy3iX.json'),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => homescreen()));
                  },
                  child: Text('Login',textAlign: TextAlign.center,style: GoogleFonts.redHatDisplay(color: Color(0xFFFFFFFF),fontSize: 33,),),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => signin()));
                  //TODO CREATE ACCOUNT SCREEN GOES HERE
                },
                child: Text('New User? Create Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
