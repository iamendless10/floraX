import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class information extends StatelessWidget {
  const information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE5EADA),
        automaticallyImplyLeading: false,
        leading: CircleAvatar(
          backgroundColor: Color(0xFFC5DEAA),
            child: Icon(Icons.arrow_back_ios_rounded,color: Color(0xFF3E6334),)),
        title: Text('                  Details',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Color(0xFF4D734B),fontSize: 18,),),
        actions: [
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     IconButton(
          //       icon: Icon(Icons.search),
          //       onPressed: () {
          //         // Do something when the search icon is pressed
          //       },
          //     ),
          //   ],
          // ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFC5DEAA),
                child: IconButton(
                  icon: Icon(Icons.thumb_up_off_alt_sharp,color: Color(0xFF3E6334),),
                  onPressed: () {
                    // Do something when the settings icon is pressed
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 1500,
                width: 360,
                color: Color(0xFFE5EADA),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 10,
                      color: Color(0xFFE5EADA),
                    ),
                    Container(
                      height: 300,
                      width: 320,
                      decoration:
                      BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/monstra2.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFC5DEAA),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 10,
                      color: Color(0xFFE5EADA),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      color: Color(0xFFE5EADA),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Monstera Deliciosa',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 28,),),
                          Text('Monstera',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF5C5C5C),fontSize: 20,),),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 10,
                      color: Color(0xFFE5EADA),
                    ),
                    Container(
                      height: 500,
                      width: 350,
                      color: Color(0xFFE5EADA),
                      // color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text('Pests',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                          Text('Mealybugs, scale, spider mites, bacterial leaf spot, root rot, and anthracnose can all affect monstera plants. A variety of methods, including insecticides, horticultural oil, and repotting can address these issues. However, pests and diseases are best prevented with an optimal growing environment.',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
                          Container(
                            height: 50,
                            width: 10,
                            color: Color(0xFFE5EADA),
                          ),
                          Container(
                            height: 220,
                            width: 380,
                            color: Color(0xFFE5EADA),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 180,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF97A485),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 180,
                                          color: Colors.transparent,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Mealy bugs',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_pests.webp'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 180,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF97A485),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 180,
                                          color: Colors.transparent,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Spider Mites',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_pests2.webp'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 180,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF97A485),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 180,
                                          color: Colors.transparent,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Scale',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_pests3.webp'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 180,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF97A485),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 180,
                                          color: Colors.transparent,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Aphids',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_pests4.webp'),
                                              fit: BoxFit.fill,
                                            ),
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
                    Container(
                      height: 300,
                      width: 350,
                      color: Color(0xFFE5EADA),
                      // color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text('Pests',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                          Text('Mealybugs, scale, spider mites, bacterial leaf spot, root rot, and anthracnose can all affect monstera plants. A variety of methods, including insecticides, horticultural oil, and repotting can address these issues. However, pests and diseases are best prevented with an optimal growing environment.',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),

                        ],
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
