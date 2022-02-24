import 'package:flutter/material.dart';

class ListApp extends StatelessWidget {
  const ListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListApp",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Hello World"),
            trailing: IconButton(
              icon: Icon(Icons.star_border),
              onPressed: (){},
            ),
          ),
          ListTile(title: Text("Jude"),),
          ListTile(title: Text("Hallo"),),
        ],
      )
    );
  }
}

