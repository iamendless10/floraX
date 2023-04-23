import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class aboutus extends StatelessWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD24C57),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0xFFD24C57),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Pentium Predators',textAlign: TextAlign.center,style: GoogleFonts.orbitron(color: Colors.white,fontSize: 35,),),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFD24C57),
              ),
              child: Container(
                height: 800,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      width: 380,
                      child: Text('About us',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Color(0xFF2B2B2B),fontSize: 28,),),
                    ),
                    Container(
                      height: 600,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)
                          )
                      ),
                      child: Text('Pentium Predators is a technology company that offers both software and hardware solutions. They have a team of highly skilled engineers and developers who can provide custom software applications, new hardware components, or complete technology overhauls to meet the needs of businesses of all sizes. Pentium Predators stays up-to-date with the latest advancements in technology to provide effective solutions for their clients. They are committed to delivering high-quality services and ensuring customer satisfaction. Pentium Predators has the expertise and resources to help businesses succeed in the fast-paced world of technology. Interested businesses can contact them to learn more about their services.',textAlign: TextAlign.center,style: GoogleFonts.urbanist(color: Color(0xFF2B2B2B),fontSize: 20,),),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
