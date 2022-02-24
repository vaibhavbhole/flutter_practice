import 'package:flutter/material.dart';
import 'package:flutter_practice/src/list_practice/multiple_list.dart';

class MultiListVM extends ChangeNotifier {
  final List<ListItem> _list = List<ListItem>.generate(
      100,
      (index) => index % 6 == 0
          ? HeadingItem('heading $index')
          : MessageItem('Sender $index', 'Body $index'));

  List<ListItem> get list => _list;

}
