import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BottomNavigator extends StatelessWidget {
  // const BottomNavigator({Key? key}) : super(key: key);
  late WebViewController _conttroller;

  BottomNavigator(this._conttroller);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: HexColor('011350'),
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 60,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/3,
              height: 60,
              child: InkWell(
                onTap: (){

                },
                child: Icon(Icons.search_outlined,color: HexColor('5e80c4'),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/3,
              height: 60,
              child: InkWell(
                  onTap: () async {
                    final url = await _conttroller.currentUrl();
                    print('Previous Website: $url');
                    _conttroller.loadUrl('https://khadije.com/delneveshte');
                  },
                  child: Icon(Icons.favorite,color: HexColor('5e80c4'),)
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width/3,
                height: 60,
                child: InkWell(
                  onTap: ()  {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HazratKhadije()));
                  },
                  child: Icon(Icons.home_outlined,color: HexColor('5e80c4'),),
                )
            ),
          ],
        ),
      ),
    );
  }
}