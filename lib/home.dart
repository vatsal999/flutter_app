import 'package:flutter/material.dart';
import 'package:sutt_app/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: TextStyle(fontSize: 30, fontFamily: 'Inter'),
        ),
        backgroundColor: Color(0xFF161616),
        toolbarHeight: 50,
      ),
      body: ListView(
        children: [
          MyCard(
            ordernumber: 1262,
            status: "Accepted",
            quantity: 2,
            image: "lib/assets/images/pizza.jpg",
            price: 120,
            progresspercent: 37,
          ),
          MyCard(
            ordernumber: 1263,
            status: "Accepted",
            quantity: 2,
            image: "lib/assets/images/burger.jpg",
            price: 120,
            progresspercent: 85,
          ),
          MyCard(
            ordernumber: 1260,
            status: "Pending",
            quantity: 2,
            image: "lib/assets/images/burger.jpg",
            price: 120,
            progresspercent: 0,
          ),
          MyCard(
            ordernumber: 1261,
            status: "Rejected",
            quantity: 2,
            image: "lib/assets/images/pizza.jpg",
            price: 120,
            progresspercent: 0,
          ),
        ],
      ),
      backgroundColor: Color(0xFF1D2021),
    );
  }
}
