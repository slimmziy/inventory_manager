import 'package:flutter/material.dart';
import 'package:inventory_manager/widgets/drawer.dart';

class Dashboard extends StatefulWidget {
  static const String routeName = '/dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu Utama'),
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView());
  }
}
