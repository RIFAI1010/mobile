import 'package:flutter/material.dart';
import 'package:starbhak/home.dart';
import 'package:starbhak/nav.dart';

class total extends StatefulWidget {
  const total({super.key});

  @override
  State<total> createState() => _totalState();
}

class _totalState extends State<total> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: ListView(
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                width: 140.0,
                height: 140.0,
                child: Image.asset(
                  'images/burger.jpeg',
                  width: 140.0,
                  height: 140.0,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Burger King"),
                  Text("Rp 30.000,00"),
                  Row(
                    children: [
                      Icon(Icons.remove_circle),
                      Text("1"),
                      Icon(Icons.add_circle)
                    ],
                  )
                ],
              ),
              Icon(Icons.delete),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                width: 140.0,
                height: 140.0,
                child: Image.asset(
                  'images/soda.jpeg',
                  width: 140.0,
                  height: 140.0,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Soda"),
                  Text("Rp 10.000,00"),
                  Row(
                    children: [
                      Icon(Icons.remove_circle),
                      Text("1"),
                      Icon(Icons.add_circle)
                    ],
                  )
                ],
              ),
              Icon(Icons.delete),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                width: 140.0,
                height: 140.0,
                child: Image.asset(
                  'images/burger.jpeg',
                  width: 140.0,
                  height: 140.0,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Burger King"),
                  Text("Rp 30.000,00"),
                  Row(
                    children: [
                      Icon(Icons.remove_circle),
                      Text("1"),
                      Icon(Icons.add_circle)
                    ],
                  )
                ],
              ),
              Icon(Icons.delete),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Ringkasan belanja"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("PPN 11%"), Text("Rp 10.000,00")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("Total belanja"), Text("Rp 93.000,00")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Total pembayaran",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp 134.000,00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment(0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Checkout"),
                ),
              ),
            ],
          )
        ],
      ))
    ]));
  }
}
