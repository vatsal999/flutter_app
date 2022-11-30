import 'package:flutter/material.dart';
import 'package:sutt_app/details.dart';

class MyCard extends StatelessWidget {
  final int ordernumber;
  final String status;
  final int quantity;
  final int progresspercent;
  final int price;
  final String image;

  const MyCard({
    super.key,
    required this.ordernumber,
    required this.status,
    required this.quantity,
    required this.price,
    required this.image,
    required this.progresspercent,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => details(
                  image: image,
                  progress: progresspercent,
                ),
              ));
        },
        child: Container(
          child: Row(
            children: [
              Column(children: [
                Text(
                  "Order #$ordernumber",
                  style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      color: Color(0xFF808080),
                    ),
                    Text("$status", style: TextStyle(color: Color(0xFFFFFFFF))),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Color(0xFF808080),
                    ),
                    Text(
                      "x $quantity",
                      style: TextStyle(color: Color(0xFFFFFFFF)),
                    )
                  ],
                ),
                Spacer()
              ]),
              Spacer(),
              Container(
                height: 300,
                width: 200,
                child: Column(
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                    Text("Hello!")
                  ],
                ),
              ),
            ],
          ),
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF161616),
          ),
          padding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
