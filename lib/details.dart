import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class details extends StatelessWidget {
  final String image;
  final int progress;
  final int ordernumber;
  const details(
      {super.key,
      required this.image,
      required this.progress,
      required this.ordernumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1D2021),
        appBar: AppBar(
          title: Text(
            "Details",
            style: TextStyle(fontSize: 30, fontFamily: 'Inter'),
          ),
          backgroundColor: Color(0xFF161616),
          toolbarHeight: 50,
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1000,
                      radius: 50,
                      lineWidth: 10,
                      percent: progress * 0.01,
                      circularStrokeCap: CircularStrokeCap.round,
                      // progressColor: Color(0xFFFFFFFF),
                      linearGradient: LinearGradient(
                          colors: [Color(0xFF8ec07c), Color(0xFF83a598)]),
                      backgroundColor: Color(0xFF161616),
                      center: Text("   $progress%\nProgress",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xFFcfcfcf))),
                    ),
                    Text(
                      "Order No. $ordernumber",
                      style: TextStyle(color: Color(0xFF8ec07c), fontSize: 20),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
            Divider(
              thickness: 5,
              indent: 30,
              endIndent: 30,
              color: Color(0xFF161616),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Date",
                          style: TextStyle(
                              color: Color(0xFFcfcfcf), fontSize: 15)),
                      Text("Quantity",
                          style: TextStyle(
                              color: Color(0xFFcfcfcf), fontSize: 15)),
                      Text("Progress",
                          style: TextStyle(
                              color: Color(0xFFcfcfcf), fontSize: 15)),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  Row(
                    children: [
                      Text(
                        "20/10/22",
                        style:
                            TextStyle(color: Color(0xFF808080), fontSize: 12),
                      ),
                      Text(
                        "4,733",
                        style:
                            TextStyle(color: Color(0xFF808080), fontSize: 12),
                      ),
                      Text(
                        "+22%",
                        style:
                            TextStyle(color: Color(0xFFB8BB26), fontSize: 12),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    children: [
                      Text(
                        "19/10/22",
                        style:
                            TextStyle(color: Color(0xFF808080), fontSize: 12),
                      ),
                      Text(
                        "4,000",
                        style:
                            TextStyle(color: Color(0xFF808080), fontSize: 12),
                      ),
                      Text(
                        "-2%",
                        style:
                            TextStyle(color: Color(0xFFFB4934), fontSize: 12),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ),
          ],
        ));
  }
}
