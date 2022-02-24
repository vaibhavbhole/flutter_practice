import 'package:flutter/material.dart';
import 'package:flutter_practice/src/list_practice/question/screen_two_view.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
          }, icon: Icon(Icons.add_shopping_cart)),
        ],
      ),
      body: Container(),
    );
  }
}
