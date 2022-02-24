import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/src/list_practice/multiple_list_vm.dart';
import 'package:provider/provider.dart';


class MultiListApp extends StatelessWidget {
  const MultiListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => MultiListVM()),

    ],
    child: MaterialApp(
      title: "MultiList App",
      home: Scaffold(
        appBar: AppBar(title: Text("Multi List App"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),
        ],),
        body: Consumer<MultiListVM>(builder: (context,mList,child){
          return ListView.builder(
              itemCount: mList.list.length,
              itemBuilder: (context,index){
                final item=mList.list[index];
                return ListTile(title: item.builtTitle(context),
                subtitle: item.buildSubtitle(context),);
          });
        },),
      ),
    ),);
  }
}

abstract class ListItem {
  Widget builtTitle(BuildContext context);

  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  @override
  Widget builtTitle(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class MessageItem implements ListItem{
  final String sender;
  final String body;
  MessageItem(this.sender,this.body);

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(sender);
  }

  @override
  Widget builtTitle(BuildContext context) {
    return Text(body);
  }

}