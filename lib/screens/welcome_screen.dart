import 'package:backup/colors.dart';
import 'package:backup/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          pColor.withOpacity(0.8),
          pColor,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  width: 240,
                  height: 260,
                  child: Image.asset("images/doctors.png"),
                )),
            SizedBox(height: 5),
            Text(
              "Doctors Online",
              style: TextStyle(
                color: wColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Appoint Your Doctor",
              style: TextStyle(
                color: wColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Material(
              color: wColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Text("Let's Go",
                      style: TextStyle(
                          color: pColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: 7),
            Container(
              width: 250,
              height: 240,
              child: Image.asset(
                "images/lined heart.png",
                color: wColor,
                scale: 2,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
