import 'package:flutter/material.dart';
import 'package:starbhak/home.dart';
import 'package:starbhak/submit.dart';
import 'package:starbhak/total.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => cartState();
}

class cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleButton(icon: Icons.arrow_left, onPressed: () {}),
                    CircleButton(
                        icon: Icons.person,
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return total();
                          }));
                        }),
                  ],
                ),
              ),
              Align(
                alignment: Alignment(-0.9, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return submit();
                    }));
                  },
                  child: Text("Add Data"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("foto"),
                  Text("nama produk"),
                  Text("harga"),
                  Text("aksi"),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: 100.0,
                        height: 100.0,
                        child: Image.asset(
                          'images/burger.jpeg',
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      Text("Burger King"),
                      Text("Rp 30.000,00"),
                      Icon(Icons.delete)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: 100.0,
                        height: 100.0,
                        child: Image.asset(
                          'images/soda.jpeg',
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      Text("Soda"),
                      Text("Rp 10.000,00"),
                      Icon(Icons.delete)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: 100.0,
                        height: 100.0,
                        child: Image.asset(
                          'images/burger.jpeg',
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      Text("Burger King"),
                      Text("Rp 30.000,00"),
                      Icon(Icons.delete)
                    ],
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
