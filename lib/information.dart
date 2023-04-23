import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'plantdetails.dart';

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
            child: IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Color(0xFF3E6334), onPressed: (){Navigator.pop(context);},)),
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
                height: 2320,
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
                      height: 200,
                      width: 350,
                      color: Color(0xFFE5EADA),
                      // color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text('Growing Condition',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                          Text('Monstera requires a warm, humid climate to grow and is typically grown in tropical regions. It prefers well-drained soil and indirect sunlight.',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 350,
                      color: Color(0xFFE5EADA),
                      // color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text('Health benefits',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                          Text('Monstera is not typically consumed for its health benefits.',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      width: 350,
                      color: Color(0xFFE5EADA),
                      // color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text('Culinary Uses',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                          Text('Monstera fruit is edible and has a sweet, tropical flavor, but it is not widely consumed. The leaves of the Monstera deliciosa plant are sometimes used in salads or as a garnish, but should be cooked before consumption due to the presence of calcium oxalate crystals.',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
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
                                              Text('delicious monster',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_fruit.webp'),
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
                                              Text('Dehumidifying',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_fruit2.webp'),
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
                                              Text('Odor Elimination',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_fruit3.webp'),
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
                      height: 500,
                      width: 350,
                      color: Color(0xFFE5EADA),
                      // color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text('Common diseases',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                          Text('Monstera is susceptible to several pests and diseases, including spider mites, mealybugs, and root rot.',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
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
                                              Text('Yellowing Leaves',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_dis.jpg'),
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
                                              Text('Browning Leaf',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_dis2.jpg'),
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
                                              Text('No Fenestration',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage('images/monstera_dis3.jpg'),
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

                  ],
                ),
              ),
              Container(
                height: 110,
                width: 360,
                color: Color(0xFFE5EADA),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 110,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                            )
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('      '),
                            Icon(Icons.bar_chart,color: Colors.black,),
                            Text('   Statistics',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Colors.black,fontSize: 18,),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        height: 110,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Color(0xff5D9C59),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                            )
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('      '),
                            Icon(Icons.info_rounded,color: Color(0xFFFFFFFF),),
                            Text('   Information',textAlign: TextAlign.center,style: GoogleFonts.rowdies(color: Color(0xFFFFFFFF),fontSize: 18,),),
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