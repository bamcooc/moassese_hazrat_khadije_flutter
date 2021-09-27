import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        initialUrl: 'https://khadije.com/fa',
        onWebViewCreated: (controller){
          this.conttroller = controller;
        },
        onPageStarted: (url){
          print('New website: $url');
        },
      ),
    );
   // InkWell(
   //      onTap: () async {
   //        final url = await conttroller.currentUrl();
   //        print('Previous Website: $url');
   //        conttroller.loadUrl('https://khadije.com/delneveshte');
   //      },
   //    );
  }
}


