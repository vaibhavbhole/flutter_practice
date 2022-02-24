import 'package:flutter/material.dart';
import 'package:flutter_practice/src/state_management/provider/cart_viewmodel.dart';
import 'package:provider/provider.dart';

class ProviderApp extends StatelessWidget {

  const ProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartViewModel(),
          child: ShoppingApp(),
        ),
      ],
      child: const MaterialApp(
        title: "Provider Demo",
        home: ShoppingApp(),
      ),
    );
  }
}

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  _ShoppingAppState createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  @override
  Widget build(BuildContext context) {
    CartViewModel cart=Provider.of<CartViewModel>(context,listen: false);
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CartViewModel>(builder: (context, cart, child) {
            return Text("Count: ${cart.count}");
          }),
          Row(
            children: [
              Expanded(
                flex: 1,
                  child: TextButton(
                onPressed: () {
                  cart.increment();
                },
                child: Text("Increment"),
              )),
              Expanded(
                flex: 1,
                  child: TextButton(
                onPressed: () {
                  cart.decrement();
                },
                child: Text("Decrement"),
              )),
            ],
          )
        ],
      ),
    );
  }
}
