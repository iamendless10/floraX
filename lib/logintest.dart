import 'package:flutter/material.dart';
import 'package:pp_template/homescreen.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_template/register.dart';
import 'package:pp_template/backendapi.dart' as backendapi;

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _emailinValid=false;
  bool _passwordinValid = false;

  void _validateInputs() async{
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email == null || email.isEmpty) {
      setState(() {
        _emailinValid = true;
      });
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      setState(() {
        _emailinValid = true;
      });
    } else {
      setState(() {
        _emailinValid = false;
      });
    }

    if (password==null || password.isEmpty)
      {
        setState(() {
          _passwordinValid = true;
        });
      }
    else{
      setState(() {
        _passwordinValid = false;
      });
    }

    if(_emailinValid == false && _passwordinValid == false)
      {
        //Sending to API
        bool valid  = await backendapi.loginUser(email, password);
        if(valid==true)
          {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => homescreen()));
          }
        else{
          setState(() {
            _emailController.text = '';
            _passwordController.text = '';
          });
        }
      }
  }

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
                  child: Lottie.asset('lottie/loginperson.json'),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter your email',
                    errorText: _emailinValid ? 'Enter an valid email' : null),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      errorText: _passwordinValid? "Enter a valid password" : null),

                ),
              ),
              SizedBox(height: 30,),

              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  onTap: () {
                    _validateInputs();
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
                    context, MaterialPageRoute(builder: (_) => register()));
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
