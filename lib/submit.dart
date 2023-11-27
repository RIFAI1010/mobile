import 'package:flutter/material.dart';
import 'package:starbhak/home.dart';
import 'package:starbhak/nav.dart';

class submit extends StatefulWidget {
  const submit({super.key});

  @override
  State<submit> createState() => submitState();
}

class submitState extends State<submit> {
  String selectedValue = 'Makanan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: ListView(children: [
        Container(
          margin: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleButton(
                  icon: Icons.arrow_left,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return Nav();
                    }));
                  }),
              CircleButton(icon: Icons.person, onPressed: () {}),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Nama Produk"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukan Nama Produk',
                ),
              ),
            ),
            Text("Harga"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukan Harga',
                ),
              ),
            ),
            Text("Kategori Produk"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Makanan',
                ),
              ),
            ),
            Text("Image"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Chose File',
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Text('submit'),
                ))
          ],
        )
      ]))
    ]));
  }
}
