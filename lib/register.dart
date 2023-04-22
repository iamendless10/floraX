import 'package:flutter/material.dart';
import 'package:pp_template/homescreen.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_template/logintest.dart';
import 'signinsplash.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  String _passwordErrortxt='Enter a valid password';

  bool _emailinValid=false;
  bool _passwordinValid = false;
  bool _usernameinValid = false;

  void _validateInputs() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String username  = _usernameController.text.trim();

    if (username == null || username.isEmpty)
      {
        setState(() {
          _usernameinValid = true;
        });
      }
    else if(!RegExp(r'^\w+$').hasMatch(email))
    {
      setState(() {
        _usernameinValid = true;
      });
    }
    else
      {
        setState(() {
          _usernameinValid = false;
        });
      }

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
    else if(password.length < 8)
      {
        setState(() {
          _passwordinValid = true;
          _passwordErrortxt = 'Password must contain 8 characters';
        });
      }
    else{
      setState(() {
        _passwordinValid = false;
      });
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
            image: AssetImage('images/sign_in5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100,),
              Container(
                width: 250,
                height: 200,
                color: Colors.transparent,
                child: Lottie.network('https://assets9.lottiefiles.com/datafiles/6deVuMSwjYosId3/data.json'),
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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintText: '',
                        errorText: _usernameinValid ? "Username can only contain letters, numbers, underscore" : null),
                  ),
                ),
              ),
              SizedBox(height: 25,),
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
                        hintText: 'Enter valid email id as abc@gmail.com',
                        errorText: _emailinValid ? "Enter a valid email" : null),
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
                      hintText: 'Enter secure password',
                      errorText: _passwordinValid? _passwordErrortxt : null),
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
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (_) => signinsplash()));
                  },
                  child: Text('Register',textAlign: TextAlign.center,style: GoogleFonts.redHatDisplay(color: Color(0xFFFFFFFF),fontSize: 33,),),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginDemo()));

                  //TODO CREATE ACCOUNT SCREEN GOES HERE

                },
                child: Text('Existing User? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
