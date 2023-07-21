import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class webview extends StatefulWidget {
  const webview({Key? key}) : super(key: key);

  @override
  State<webview> createState() => _webviewState();
}

class _webviewState extends State<webview> {
  double _progress = 0;
  late InAppWebViewController inAppWebViewController;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse("""https://www.google.com/maps/place/10.834323644741062, 77.05803781349267""")
            ),
            onWebViewCreated: (InAppWebViewController controller){
              inAppWebViewController = controller;

            },
            onProgressChanged: (InAppWebViewController controller , int progress){
              setState(() {
                _progress = progress/100;
              });
            },
          )
        ],
      ),

    );
  }
}
