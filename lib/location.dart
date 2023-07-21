import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_template/Homescreen.dart';
import 'package:pp_template/inappwebview.dart';

class location extends StatelessWidget {
  const location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Website"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => webview(), // Replace YourDestinationScreen with the desired destination screen widget
              ),
            );

          },
          child: Text("Open"),
        ),
      ),
    );
  }
}
