import 'package:flutter/material.dart';
import 'package:hazrat_khadije/BottonNavigationBar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  home: HazratKhadije(),


  title: "App",
  localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('fa'), // English, no country code
  ],
)

);

class HazratKhadije extends StatefulWidget {
  const HazratKhadije({Key? key}) : super(key: key);

  @override
  _HazratKhadijeState createState() => _HazratKhadijeState();
}

class _HazratKhadijeState extends State<HazratKhadije> {
  late WebViewController conttroller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://khadije.com/fa',
        onWebViewCreated: (controller){
          this.conttroller = controller;
        },
        onPageStarted: (url){
          print('New website: $url');
        },
      ),
      bottomNavigationBar: BottomNavigator(conttroller),
    );
  }
}

