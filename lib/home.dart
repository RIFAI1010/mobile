import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                      CircleButton(icon: Icons.menu, onPressed: () {}),
                      CircleButton(icon: Icons.person, onPressed: () {}),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyCard(image: 'images/burger.jpeg', title: 'All'),
                    MyCard(image: 'images/burger.jpeg', title: 'Makanan'),
                    MyCard(image: 'images/soda.jpeg', title: 'Minuman'),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "All Food",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyCardChild(
                        image: 'images/burger.jpeg',
                        title: 'Burger King',
                        price: 'Rp 30.000,00'),
                    MyCardChild(
                        image: 'images/burger.jpeg',
                        title: 'Burger King',
                        price: 'Rp 30.000,00'),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyCardChild(
                        image: 'images/burger.jpeg',
                        title: 'Burger King',
                        price: 'Rp 30.000,00'),
                    MyCardChild(
                        image: 'images/soda.jpeg',
                        title: 'Soda',
                        price: 'Rp 10.000,00'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

  CircleButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String image;
  final String title;

  MyCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            width: 100.0,
            height: 100.0,
            child: Image.asset(
              image,
              width: 80.0,
              height: 80.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class MyCardChild extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  MyCardChild({required this.image, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            width: 160.0,
            height: 160.0,
            child: Image.asset(
              image,
              width: 120.0,
              height: 120.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
