import 'package:flutter/material.dart';
import 'package:inventory_manager/route.dart';

class AppDrawer extends StatelessWidget {
  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('Assets/images/logo.jpg'),
        ),
      ),
      child: null,
    );
  }

  Widget _createDrawerTitle({String text}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Container(
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerTitle(text: 'Manajer Inventaris'),
          _createDrawerItem(
              icon: Icons.dashboard,
              text: 'Menu Utama',
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.dashboard);
              }),
          _createDrawerItem(
              icon: Icons.inventory,
              text: 'Stok',
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.stocks);
              }),
          Divider(),
          _createDrawerItem(icon: Icons.code, text: 'Dev'),
          // _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
          ListTile(
            title: Text('V.0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
