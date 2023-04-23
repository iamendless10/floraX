import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:pp_template/backendapi.dart';
import 'dart:convert';



class information extends StatefulWidget {
  final String plant;
  const information({Key? key, required this.plant}) : super(key: key);
  @override
  _informationState createState() => _informationState();
}
class _informationState extends State<information> {
  Map<String, dynamic> resp = {};
  @override
  void initState()
  {
    getPlantInfo();
    super.initState();
  }
  Future getPlantInfo() async{
    String apiResponse = '';
    http.Response response;
    response= await http.put(Uri.parse(apiUrl+"/plant"),
      headers:  {'Content-Type': 'application/json'},
      body: json.encode({'name' :widget.plant}),);
    if(response.statusCode == 200)
    {
      setState(() {
        apiResponse = response.body;
        resp = json.decode(apiResponse);
      });
    }
  }

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
                          image: NetworkImage(resp['details_img']),
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
                          Text(resp['botanical_name'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 28,),),
                          Text(resp['display_name'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF5C5C5C),fontSize: 20,),),
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
                          Text(resp['pests'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
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
                                              Text(resp['pest_1'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['pest_1_img']),
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
                                              Text(resp['pest_2'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['pest_2_img']),
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
                                              Text(resp['pest_3'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['pest_3_img']),
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
                                              Text(resp['pest_4'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['pest_4_img']),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )

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
                          Text(resp['growing_conditions'] ?? 'Unknown',textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
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
                          Text(resp['health_benefits'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
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
                          Text(resp['culinary_uses'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
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
                                              Text(resp['culinary_1'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['culinary_1_img']),
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
                                              Text(resp['culinary_2'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['culinary_2_img']),
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
                                              Text(resp['culinary_3'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['culinary_3_img']),
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
                          Text(resp['common_diseases'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 17,),),
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
                                              Text(resp['disease_1'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['disease_1_img']),
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
                                              Text(resp['disease_2'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['disease_2_img']),
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
                                              Text(resp['disease_3'] ?? "Unknown",textAlign: TextAlign.center,style: GoogleFonts.kanit(color: Color(0xFF284927),fontSize: 20,),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(resp['disease_3_img']),
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
