import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pp_template/homescreen.dart';
import 'package:pp_template/TakePictureScreen.dart';
import 'package:camera/camera.dart';
import 'package:pp_template/profilepage.dart';



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
      "",
      "id": 1,
      "name": "Hibiscus",
      "des": "Hibiscus Rosasinensis",
    },
    {
      "id": 2,
      "name": "Mango",
      "des": "Mangifera indica",
      "image":
      "",
    },
    {
      "id": 3,
      "name": "Banana",
      "des": "Musa Acuminata",
      "image":
      "",
    },
    {
      "id": 4,
      "name": "Hibiscus",
      "des": "Hibiscus Rosasinensis",
      "image":
      "",
    },
    {
      "id": 5,
      "name": "Neem",
      "des": "Azadirachta Indica",
      "image":
      "",
    },
    {
      "id": 6,
      "name": "Coconut",
      "des": "Cocos Nucifera",
      "image":
      "",
    },
    {
      "id": 7,
      "name": "Mango",
      "des": "Mangifera Indica",
      "image":
      "",
    },
    {
      "id": 8,
      "name": "Rose",
      "des": "Rosa Rubiginosa",
      "image":
      "",
    },
    {
      "id": 9,
      "name": "Palm Tree",
      "des": "Arecaceae",
      "image":
      "",
    },
    {
      "id": 10,
      "name": "Tomato",
      "des": "Solanum Lycopersicum",
      "image":
      "",
    },    {
      "id": 11,
      "name": "Banyan",
      "des": "Ficus Benghalensis",
      "image":
      "",
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
                // onPressed: () {
                // setState(() {
                // });
                // //   Navigator.push(
                // //     context,
                // //     MaterialPageRoute(builder: (context) => SearchBarScreen()),
                // //   );
                // // },
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
