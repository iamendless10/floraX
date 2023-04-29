import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pp_template/homescreen.dart';
import 'package:pp_template/TakePictureScreen.dart';
import 'package:camera/camera.dart';
import 'package:pp_template/profilepage.dart';
import 'beforetest.dart';


class soiltype extends StatefulWidget {
  const soiltype({Key? key}) : super(key: key);

  @override
  State<soiltype> createState() => _soiltypeState();
}

class _soiltypeState extends State<soiltype> {
  int _selectedIndex = 1;
  List <Map<String, dynamic>> _allUsers = [];
  List<Map<String, dynamic>> _alluvial = [
    {
      "image":
      "https://s3.tebi.io/florax2/hibiscus_display.jpg",
      "id": 1,
      "name": "Hibiscus",
      'page':'hibiscus',
      "des": "Hibiscus Rosasinensis",
    },
    {
      "id": 2,
      "name": "Rice",
      'page': 'rice',
      "des": "Oryza Sativa",
      "image":
      "https://s3.tebi.io/florax/Images/rice_display.jpg",
    },
    {
      "id": 3,
      "name": "Coconut",
      'page':'coconut',
      "des": "Cocos Nucifera",
      "image":
      "https://s3.tebi.io/florax/Images/coconut_display.jpg",
    },
    {
      "id": 4,
      "name": "Mango",
      'page':'mango',
      "des": "Mangifera Indica",
      "image":
      "https://s3.tebi.io/florax/Images/mango_display.jpg",
    },
    {
      "id": 5,
      "name": "Palm Tree",
      'page':'palm',
      "des": "Arecaceae",
      "image":
      "https://s3.tebi.io/florax/Images/plam_tree.png",
    },
    {
      "id": 6,
      "name": "Lemon",
      'page':'lemon',
      "des": "Citrus Limon",
      "image":
      "https://s3.tebi.io/florax/Images/lemon_display.jpg",
    },
  ];
  List<Map<String, dynamic>> _salline = [
    {
      "id": 1,
      "name": "Coconut",
      'page':'coconut',
      "des": "Cocos Nucifera",
      "image":
      "https://s3.tebi.io/florax/Images/coconut_display.jpg",
    },
    {
      "id": 2,
      "name": "Lemon",
      'page':'lemon',
      "des": "Citrus Limon",
      "image":
      "https://s3.tebi.io/florax/Images/lemon_display.jpg",
    },
    ];
  List<Map<String, dynamic>> _black = [
    {
      "id": 1,
      "name": "Rose",
      'page':'rose',
      "des": "Rosa Rubiginosa",
      "image":
      "https://s3.tebi.io/florax/Images/rose_display.jpg",
    },
    {
      "id": 2,
      "name": "Lemon",
      'page':'lemon',
      "des": "Citrus Limon",
      "image":
      "https://s3.tebi.io/florax/Images/lemon_display.jpg",
    },
  ];
  List<Map<String, dynamic>> _sandy = [
    {
      "id": 1,
      "name": "Tomato",
      'page':'tomato',
      "des": "Solanum Lycopersicum",
      "image":
      "https://s3.tebi.io/florax2/tomato_details_img.png",
    },
    {
      "id": 2,
      "name": "Banyan",
      'page':'banyan',
      "des": "Ficus Benghalensis",
      "image":
      "https://s3.tebi.io/florax/Images/banyan_display.jpg",
    },
    {
      "id": 3,
      "name": "Lemon",
      'page':'lemon',
      "des": "Citrus Limon",
      "image":
      "https://s3.tebi.io/florax/Images/lemon_display.jpg",
    },
  ];




  String _selectedOption='Alluvial Soil';

  List<String> _options = [
    'Alluvial Soil',
    'Saline Soil',
    'Black Soil',
    'Sandy Soil'
  ];
  @override
  void initState() {
    setState(() {
      _allUsers = _alluvial;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration:
        BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            color: Color(0xFF355E3B),

            borderRadius: BorderRadius.circular(10)
        ),
        height: 60,
        width: 340,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 1),
          child: GNav(
            backgroundColor: Color(0xFF355E3B),
            color: Colors.white,
            activeColor: Color(0xff393053),
            tabBackgroundColor: Color(0xFF50C878),
            selectedIndex: _selectedIndex,
            padding: EdgeInsets.all(10),
            tabs: [
              GButton(icon: Icons.home,
                gap: 9,
                text: 'Home',
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0; // Set the selected index when pressed
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homescreen()),
                  );
                },
              ),
              GButton(icon: Icons.search,
                text: 'Search',
              ),
              GButton(icon: Icons.qr_code_scanner,
                text: 'Scan',
                onPressed: () async{
                  // Ensure that plugin services are initialized so that `availableCameras()`
                  // can be called before `runApp()`
                  WidgetsFlutterBinding.ensureInitialized();

                  // Obtain a list of the available cameras on the device.
                  final cameras = await availableCameras();

                  // Select the back camera from the list of available cameras.
                  final camera = cameras.firstWhere(
                        (camera) => camera.lensDirection == CameraLensDirection.back,
                    orElse: () => throw StateError('No back camera available'),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TakePictureScreen(camera: camera)),
                  );
                },
              ),
              GButton(icon: Icons.person_outline_rounded,
                  text: 'Profile',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );}
              ),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF355E3B),
        centerTitle: true,
        title:  Text('Plant Recommendations ',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
          DropdownButton<String>(
          value: _selectedOption,
          onChanged: (newValue) {
            setState(() {
              _selectedOption = newValue!;
              if(_selectedOption == 'Saline Soil')
                {
                  _allUsers = _salline;
                }
              else if(_selectedOption == 'Alluvial Soil')
              {
                _allUsers = _alluvial;
              }
              else if(_selectedOption == 'Black Soil')
              {
                _allUsers = _black;
              }
              else if(_selectedOption == 'Sandy Soil')
              {
                _allUsers = _sandy;
              }
            });
          },
          items: _options.map((option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
            // TextField(
            //   onChanged: (value) => _runFilter(value),
            //   decoration: InputDecoration(
            //     contentPadding:
            //     const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            //     hintText: "Search",
            //     suffixIcon: const Icon(Icons.search,color: Colors.black,),
            //     // prefix: Icon(Icons.search),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(20.0),
            //       borderSide: const BorderSide(),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _allUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _allUsers.length,
                itemBuilder: (context, index) => Card(
                  elevation: 1,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                      NetworkImage(_allUsers[index]['image']),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(_allUsers[index]['name']),
                    subtitle: Text('${_allUsers[index]["des"]}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => beforetest(plant: _allUsers[index]['page'],)),
                      );
                    },
                  ),
                ),
              )
                  : const Text(
                'Oops! No results found.',
                style: TextStyle(fontSize: 24),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
