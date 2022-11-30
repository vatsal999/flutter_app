import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class details extends StatelessWidget {
  final String image;
  final int progress;
  const details({super.key, required this.image, required this.progress});

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
                      progressColor: Color(0xFFFFFFFF),
                      backgroundColor: Color(0xFF161616),
                      center: Text("   $progress%\nProgress",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xFFcfcfcf))),
                    )
                  ],
                )),
          ],
        ));
  }
}
