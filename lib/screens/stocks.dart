import 'package:flutter/material.dart';
import 'package:inventory_manager/route.dart';
import 'package:inventory_manager/widgets/drawer.dart';

class Stocks extends StatefulWidget {
  static const String routeName = '/stocks';

  @override
  _StocksState createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stok'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RaisedButton(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Text('Stok Saat Ini'),
                    hoverColor: Colors.transparent,
                    hoverElevation: 0,
                    highlightColor: Colors.transparent,
                    highlightElevation: 0,
                    onPressed: () {},
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  RaisedButton(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Text('Kelola Stok'),
                    hoverColor: Colors.transparent,
                    hoverElevation: 0,
                    highlightColor: Colors.transparent,
                    highlightElevation: 0,
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, Routes.add_stocks);
                    },
                  )
                ],
              ),
              Divider(),
              DataTable(
                columns: [
                  DataColumn(
                    label: Text(
                      'Nama Barang',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Jumlah Stok',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(
                      Text('Pancing'),
                    ),
                    DataCell(
                      Text('10'),
                    ),
                  ])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
