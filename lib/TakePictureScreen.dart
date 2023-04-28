import 'dart:async';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:camera/camera.dart';
import 'package:lottie/lottie.dart';
import 'package:pp_template/disease2.dart';
import 'package:pp_template/mlpage.dart';
import 'package:pp_template/signinsplash.dart';
import 'package:flutter/material.dart';
import 'package:pp_template/backendapi.dart';
import 'disease.dart';
import 'diseasesplash.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
    ),
  );
}

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF355E3B),
          title: const Text('Take picture')),
      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF355E3B),
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final image = await _controller.takePicture();

            if (!mounted) return;

            // If the picture was taken, display it on a new screen.
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                  // Pass the automatically generated path to
                  // the DisplayPictureScreen widget.
                  imagePath: image.path,
                ),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt,),
      ),
    );
  }
}

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF355E3B),
          title: const Text('Plant Detection')),
      // The image is stored as a file on the device. Use the `Image.file
      body: GestureDetector(
        // Wrap the image in a GestureDetector widget to detect user gestures
        child: Column(
          children: [
            Container(
                child: Image.file(File(imagePath))),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF355E3B),
              ),
              height: 60,
              width: 270,
              child: Center(child: Row(
                children: <Widget>[
                  SizedBox(height: 7,),
                  SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 80,
                    color: Colors.transparent,
                    child: Lottie.asset('lottie/detect_leaf.json'),
                  ),
                  TextButton(
                    child: Text(
                      'Detect Plant',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.balsamiqSans(
                          color: Colors.white, fontSize: 19),
                    ),
                    onPressed: () async {
                      // String _ml_keyword = await detectPlant(imagePath);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => mlpage(path: imagePath,)),
                        );
                    },
                  ),
                ],
              ),
              ),

            ),

            // TextButton(
            //   child: Text(
            //     'Detect',
            //     textAlign: TextAlign.center,
            //     style:
            //         GoogleFonts.balsamiqSans(color: Colors.red, fontSize: 19),
            //   ),
            //   onPressed: () {
            //
            //   },
            // ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFC3999A),
              ),
              height: 60,
              width: 270,
              child: Center(child: Row(
                children: <Widget>[
                  SizedBox(height: 7,),
                  SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 80,
                    color: Colors.transparent,
                    child: Lottie.asset('lottie/detect_disease.json'),
                  ),
                  TextButton(
                    child: Text(
                      'Detect Disease',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.balsamiqSans(
                          color: Colors.white, fontSize: 19),
                    ),
                    onPressed: () async {
                      // String _ml_keyword = await detectPlant(imagePath);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => diseasesplash(path: imagePath)),

                      );

                    },
                  ),
                ],
              ),
              ),

            ),
          ],
        ),

        // Define the onTap callback to navigate back to the camera screen
        onTap: () {
          Navigator.pop(context);
        },
      ),
      // constructor with the given path to display the image.
      // body: Image.file(File(imagePath)),
    );
  }
}
