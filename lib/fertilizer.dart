import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';


class fertilizer extends StatefulWidget {
  const fertilizer({Key? key}) : super(key: key);

  @override
  State<fertilizer> createState() => _fertilizerState();
}

class _fertilizerState extends State<fertilizer> {
  final TextEditingController _acreController = TextEditingController();
  late double _urea = 50.0;
  late double _pot_l = 30.0;
  late double _pot_h = 50.0;
  late double _fact_l = 35.0;
  late double _fact_h = 40.0;
  late double _ams_l = 25.0;
  late double _ams_h = 30.0;
  bool _acreainValid= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF017765),
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.white, onPressed: (){Navigator.pop(context);},),
        title: Text('           Fertilizer Calculator',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.white,fontSize: 18,),),
        actions: [
          Row(
            children: [

            ],
          ),
        ],

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                height: 80,
                width: 380,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Select your plot size',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.black,fontSize: 18,),),
                    SizedBox(height: 5,),
                    Text('   Enter in Acre',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.grey,fontSize: 15,),),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    controller: _acreController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Acre',
                        errorText: _acreainValid ? 'Enter Acre in digits' : null),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 330,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Express acres less than 1 as in point digits ex 0.5',textAlign: TextAlign.start,style: GoogleFonts.rowdies(color: Color(0xFFD0D1D3),fontSize: 18,),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: TextButton(
                  
                  child: Text(
                    'Calculate',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.balsamiqSans(
                        color: Colors.white, fontSize: 19),
                  ),
                  onPressed: () {
                    if (!RegExp(r'^\d*\.?\d+$').hasMatch(_acreController.text.trim()))
                      {
                        setState(() {
                          _acreainValid = true;
                        });
                      }
                    else
                      {
                        setState(() {
                          _acreainValid = false;
                        });
                      }

                    double? _acre = double.tryParse(_acreController.text.trim());

                    if (_acre != null) {
                      setState(() {
                        _urea = _acre * 50.0;
                        _pot_l = _acre * 30.0;
                        _pot_h = _acre * 45.0;
                        _fact_l = _acre * 35.0;
                        _fact_h  = _acre * 40.0;
                        _ams_l = _acre * 25.0;
                        _ams_h = _acre * 30.0;

                      });
                    }
                  },

                ),
              ),
              SizedBox(height: 40,),
              Container(
                height: 90,
                width: 360,
                color: Color(0xFFEFF3F8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('List of Fertilizer Combinations for your soil type',textAlign: TextAlign.start,style: GoogleFonts.prompt(color: Colors.black,fontSize: 18,),),
                  ],
                ),
              ),
              Container(
                height: 580,
                width: 355,
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        height: 120,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea '+ _urea.toString() + ' Kg',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Potassium ' + _pot_l.toString()+' - '+_pot_h.toString()+' kg',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    GestureDetector(
                      child: Container(
                        height: 120,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea '+ _urea.toString() + ' Kg',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Factamfos ' + _fact_l.toString()+' - '+_fact_h.toString()+' kg',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    GestureDetector(
                      child: Container(
                        height: 120,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea '+ _urea.toString() + ' Kg',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea '+ _urea.toString() + ' Kg',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
                    GestureDetector(
                      child: Container(
                        height: 120,
                        width: 355,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFE7DECC),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Urea '+ _urea.toString() + ' Kg',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 5,
                              color: Color(0xFFF3EAD3),
                            ),
                            Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFFE7DECC),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ammonium Sulfate ' + _ams_l.toString()+' - '+_ams_h.toString() + ' kg' ,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.prompt(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
