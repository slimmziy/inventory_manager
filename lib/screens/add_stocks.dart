//kelola stok

import 'package:flutter/material.dart';
import 'package:inventory_manager/route.dart';
import 'package:inventory_manager/widgets/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddStocks extends StatefulWidget {
  static const String routeName = '/add_stocks';

  @override
  _AddStocksState createState() => _AddStocksState();
}

class _AddStocksState extends State<AddStocks> {
  String namaBarang;
  int jumlahBarang;

  getNamaBarang(namaBarang) {
    this.namaBarang = namaBarang;
  }

  getJumlahBarang(name) {
    this.jumlahBarang = jumlahBarang;
  }

  createData() {
    print('1');

    DocumentReference documentReference =
        // ignore: deprecated_member_use
        Firestore.instance.collection("barang").document(namaBarang);

    Map<String, dynamic> barang = {
      "namaBarang": namaBarang,
      "jumlahBarang": jumlahBarang
    };

    // ignore: deprecated_member_use
    documentReference.setData(barang).whenComplete(() {
      print("$namaBarang created");
    });
  }

  readData() {
    print('2');
  }

  editData() {
    print('3');
  }

  deleteData() {
    print('4');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelola Stok'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.stocks);
                  },
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
                  onPressed: () {},
                )
              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Barang',
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[200], width: 2.0),
                  ),
                ),
                onChanged: (String namaBarang) {
                  getNamaBarang(namaBarang);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Jumlah Barang',
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[200], width: 2.0),
                  ),
                ),
                onChanged: (String jumlahBarang) {
                  getJumlahBarang(jumlahBarang);
                },
              ),
            ),
            Divider(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: RaisedButton(
                    child: Text(
                      'Tambah',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Colors.green[300],
                    onPressed: () {
                      createData();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: RaisedButton(
                    child: Text(
                      'Perbarui',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Colors.blue[300],
                    onPressed: () {
                      readData();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: RaisedButton(
                    child: Text(
                      'Rubah',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Colors.orange[300],
                    onPressed: () {
                      editData();
                    },
                  ),
                ),
                RaisedButton(
                  child: Text(
                    'Hapus',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: Colors.red[300],
                  onPressed: () {
                    deleteData();
                  },
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
