import 'package:flutter/material.dart';
import 'package:sutt_app/details.dart';
import 'package:sutt_app/main.dart';

class MyCard extends StatefulWidget {
  final int ordernumber;
  String status;
  final int quantity;
  final int progresspercent;
  final int price;
  final String image;

  MyCard({
    super.key,
    required this.ordernumber,
    required this.status,
    required this.quantity,
    required this.price,
    required this.image,
    required this.progresspercent,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: GestureDetector(
        onTap: () {
          if (widget.status == "Accepted") {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => details(
                    image: widget.image,
                    progress: widget.progresspercent,
                    ordernumber: widget.ordernumber,
                  ),
                ));
          }
        },
        child: Container(
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "Order #${widget.ordernumber}",
                    style: TextStyle(
                        color: Color(0xFF808080),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Color(0xFF808080),
                      ),
                      Text("${widget.status}",
                          style: TextStyle(
                              color: Color((widget.status == "Accepted"
                                  ? 0xFFB8BB26
                                  : 0xFFFB4934)))),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Color(0xFF808080),
                      ),
                      Text(
                        "x ${widget.quantity}",
                        style: TextStyle(color: Color(0xFFFFFFFF)),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 300,
                width: 200,
                child: Column(
                  children: [
                    Image.asset(
                      widget.image,
                      fit: BoxFit.fill,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.status = "Accepted";
                            setState(() {});
                          },
                          child: Text(
                            "YES",
                            style: TextStyle(color: Color(0xFFB8BB26)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.status = "Rejected";
                            setState(() {});
                          },
                          child: Text(
                            "NO",
                            style: TextStyle(color: Color(0xFFFB4934)),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
