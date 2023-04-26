import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pp_template/homescreen.dart';
import 'package:pp_template/TakePictureScreen.dart';
import 'package:camera/camera.dart';
import 'package:pp_template/profilepage.dart';
import 'beforetest.dart';


class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  int _selectedIndex = 1;
  final List<Map<String, dynamic>> _allUsers = [
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
      "name": "Banana",
      'page':'banana',
      "des": "Musa Acuminata",
      "image":
      "https://s3.tebi.io/florax/Images/_7d5074b7-1613-4d74-81b4-eb85ab127a55-removebg-preview.png",
    },
    {
      "id": 3,
      "name": "Neem",
      'page':'neem',
      "des": "Azadirachta Indica",
      "image":
      "https://s3.tebi.io/florax/Images/neem_display.jpg",
    },
    {
      "id": 4,
      "name": "Coconut",
      'page':'coconut',
      "des": "Cocos Nucifera",
      "image":
      "https://s3.tebi.io/florax/Images/coconut_display.jpg",
    },
    {
      "id": 5,
      "name": "Mango",
      'page':'mango',
      "des": "Mangifera Indica",
      "image":
      "https://s3.tebi.io/florax/Images/mango_display.jpg",
    },
    {
      "id": 6,
      "name": "Rose",
      'page':'rose',
      "des": "Rosa Rubiginosa",
      "image":
      "https://s3.tebi.io/florax/Images/rose_display.jpg",
    },
    {
      "id": 7,
      "name": "Palm Tree",
      'page':'palm',
      "des": "Arecaceae",
      "image":
      "https://s3.tebi.io/florax/Images/plam_tree.png",
    },
    {
      "id": 8,
      "name": "Tomato",
      'page':'tomato',
      "des": "Solanum Lycopersicum",
      "image":
      "https://s3.tebi.io/florax2/tomato_details_img.png",
    },
    {
      "id": 9,
      "name": "Banyan",
      'page':'banyan',
      "des": "Ficus Benghalensis",
      "image":
      "https://s3.tebi.io/florax/Images/banyan_display.jpg",
    },
    {
      "id": 10,
      "name": "Lemon",
      'page':'lemon',
      "des": "Citrus Limon",
      "image":
      "https://s3.tebi.io/florax/Images/lemon_display.jpg",
    },
    {
      "id": 10,
      "name": "Orange",
      'page':'orange',
      "des": "Citrus Sinensis",
      "image":
      "https://s3.tebi.io/florax4/orange_display.jpg",
    },
    {
      "id": 10,
      "name": "Rice",
      'page':'rice',
      "des": "Oryza Sativa",
      "image":
      "https://s3.tebi.io/florax/Images/rice_display.jpg",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
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
            color: Color(0xFFC3999A),

            borderRadius: BorderRadius.circular(10)
        ),
        height: 60,
        width: 340,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 1),
          child: GNav(
            backgroundColor: Color(0xFFC3999A),
            color: Colors.white,
            activeColor: Color(0xff393053),
            tabBackgroundColor: Color(0xFFD0BBBA),
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
        backgroundColor: Color(0xFFC3999A),
        centerTitle: true,
        title:  Text('Discover new plants',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Color(0xFF2B2B2B),fontSize: 20,),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search,color: Colors.black,),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  elevation: 1,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                      NetworkImage(_foundUsers[index]['image']),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(_foundUsers[index]['name']),
                    subtitle: Text('${_foundUsers[index]["des"]}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => beforetest(plant: _foundUsers[index]['page'],)),
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
