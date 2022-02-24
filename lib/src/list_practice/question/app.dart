import 'package:flutter/material.dart';
import 'package:flutter_practice/src/list_practice/question/screen_one_view.dart';
import 'package:flutter_practice/src/list_practice/question/view_model.dart';
import 'package:provider/provider.dart';

class QuestionApp extends StatelessWidget {
  const QuestionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ViewModel()),
      ],
      child: MaterialApp(
        title: "Question App",
        home: ScreenOne(),
      ),
    );
  }
}
