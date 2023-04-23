import 'package:flutter/material.dart';
import 'package:pp_template/homescreen.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pp_template/register.dart';
import 'package:pp_template/backendapi.dart' as backendapi;

class contactus extends StatefulWidget {
  @override
  _contactusState createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  bool _emailinValid=false;

  void _validateInputs() async{
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE7C9D1),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/light_pink.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100,),
              Container(
                width: 500,
                height: 250,
                color: Colors.transparent,
                child: Lottie.network('https://assets10.lottiefiles.com/packages/lf20_Zmtk8qDFb2.json'),
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
                    controller: _usernameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintText: 'Enter your name',
                        errorText: _emailinValid ? 'Enter an valid name' : null),
                  ),
                ),
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
                    controller: _phonenumberController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        hintText: '',
                        errorText: _emailinValid ? '' : null),
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                  controller: _messageController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Message or Feedback',
                      hintText: '',),

                ),
              ),
              SizedBox(height: 30,),

              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xFFE6A9B9), borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  onTap: () {
                    _validateInputs();
                  },
                  child: Text('Send',textAlign: TextAlign.center,style: GoogleFonts.redHatDisplay(color: Color(0xFF2B2B2B),fontSize: 33,),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
