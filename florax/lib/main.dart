import 'package:flutter/material.dart';
import 'package:pp_template/loading_screen.dart';
import 'package:pp_template/splash.dart';
import 'Homescreen.dart';

void main(){
  runApp(MaterialApp(home: Homepage(),));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          loading_screen(),
        ],
      ),
    );
  }
}

