import 'package:flutter/material.dart';
import 'package:inventory_manager/screens/add_stocks.dart';
import 'package:inventory_manager/screens/dashboard.dart';
import 'package:inventory_manager/screens/stocks.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/dashboard" route, build the FirstScreen widget.
        '/': (context) => Dashboard(),
        // When navigating to the "/stocks" route, build the SecondScreen widget.
        '/stocks': (context) => Stocks(),
        '/dashboard': (context) => Dashboard(),
        '/add_stocks': (context) => AddStocks(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventory Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: (Dashboard()),
    );
  }
}
