import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/gestures.dart';

class Delneveshte extends StatefulWidget {
  const Delneveshte({Key? key}) : super(key: key);

  @override
  _DelneveshteState createState() => _DelneveshteState();
}

class _DelneveshteState extends State<Delneveshte> {
  late WebViewController conttroller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        gestureRecognizers: Set()
          ..add(Factory<VerticalDragGestureRecognizer>(
                  () => VerticalDragGestureRecognizer())),
        gestureNavigationEnabled: true,
        initialUrl: 'https://khadije.com/delneveshte',
        onWebViewCreated: (controller){
          this.conttroller = controller;
        },
        onPageStarted: (url){
          print('New website: $url');
        },
      ),
    );
  }
}
