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
  late WebViewController _conttroller;
  // late JavascriptChannel _toasterJavascriptChannel;
  bool isLoading=true;
  final _key = UniqueKey();

  get myModel => null;
  @override
  Widget build(BuildContext context) {
    return
      RefreshIndicator(
        onRefresh: () async => Future.delayed(Duration(seconds: 3)),
          child:
      //         Container(
      //             height: MediaQuery.of(context).size.height,
      //             width: MediaQuery.of(context).size.width,
      //             child:
      WebView(
        key: UniqueKey(),
        initialUrl: 'https://khadije.com/fa',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _conttroller = webViewController;
        },
        onPageFinished: (String str) {
          myModel.stopLoading();
        },
        onPageStarted: (String str) {
          myModel.startLoading();
        },
        gestureRecognizers: Set()
          ..add(Factory<VerticalDragGestureRecognizer>(
                  () => VerticalDragGestureRecognizer()
                ..onDown = (DragDownDetails dragDownDetails) {
                  _conttroller.getScrollY().then((value) {
                    if (value == 0 &&
                        dragDownDetails.globalPosition.direction < 1) {
                      _conttroller.reload();
                          () async => Future.delayed(Duration(seconds: 3));
                    }
                  });
                })),
    // )
      )
      ) ;
  }
}


