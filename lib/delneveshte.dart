import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/gestures.dart';

class Delneveshte extends StatefulWidget {
  const Delneveshte({Key key}) : super(key: key);

  @override
  _DelneveshteState createState() => _DelneveshteState();
}

class _DelneveshteState extends State<Delneveshte> {
  WebViewController _controller;
  bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:       RefreshIndicator(
        // onRefresh: () async => Future.delayed(Duration(seconds: 3)),
          onRefresh: () => _controller.reload(),
          child:
          Stack(
              children: <Widget>[
                WebView(
                  initialUrl: 'https://khadije.com/delneveshte',
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: (controller){
                    this._controller = controller;
                  },
                  onPageFinished: (finish) {
                    setState(() {
                      // myModel.stopLoading();
                      isLoading = false;
                    });
                  },
                ),
                isLoading ? Center( child: CircularProgressIndicator(),)
                    : Stack(),
              ]
          )
      )
    );
  }
}



// WebView(
// javascriptMode: JavascriptMode.unrestricted,
// gestureRecognizers: Set()
// ..add(Factory<VerticalDragGestureRecognizer>(
// () => VerticalDragGestureRecognizer())),
// gestureNavigationEnabled: true,
// initialUrl: 'https://khadije.com/delneveshte',
// onWebViewCreated: (controller){
// this.conttroller = controller;
// },
// onPageStarted: (url){
// print('New website: $url');
// },
// ),