import 'package:flutter/material.dart';

class MyColorApp extends StatefulWidget {
  const MyColorApp({Key? key}) : super(key: key);

  @override
  _MyColorAppState createState() => _MyColorAppState();
}

class _MyColorAppState extends State<MyColorApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Color App",
      home: ColorBox(),
    );
  }
}

class ColorBox extends StatefulWidget {
  const ColorBox({Key? key}) : super(key: key);

  @override
  _ColorBoxState createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  Color boxColor = Color(0xffb74093);
  late TextEditingController _controller;
  RegExp hexColor = RegExp(r'^#?([0-9a-fA-F]{6})$');

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      final String val=_controller.text;
      if(hexColor.hasMatch(val))
        {
          print("Inside");
          setState(() {
            boxColor=HexColor(val);
          });
        }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: boxColor,
            width: 100.0,
            height: 100.0,
          ),
          TextFormField(
            controller: _controller,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
        ],
      ),
    );
  }
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}