import 'package:backup/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:backup/widgets/doctors_section.dart';

class HomeScreen extends StatelessWidget {
  List catNames = ["Dental", "Heart", "Eye", "Brain", "Ear"];

  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: pColor, size: 28),
    Icon(MdiIcons.heartPlus, color: pColor, size: 28),
    Icon(MdiIcons.eye, color: pColor, size: 28),
    Icon(MdiIcons.brain, color: pColor, size: 28),
    Icon(MdiIcons.earHearing, color: pColor, size: 28),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFD9E4EE),
      child: SingleChildScrollView(
          child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      pColor.withOpacity(0.8),
                      pColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
              )),
            ),
            Padding(
            padding: EdgeInsets.only(top: 45),
            child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 31,
                          backgroundImage: AssetImage("images/doctor1.jpg"),
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          color: wColor,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Hi, Tsiiiiiitsii",
                      style: TextStyle(
                        color: wColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 13),
                    Center(
                      child: Text(
                        // "Your Health is Our \n First Priority",
                        "Your Health is Our First Priority",
                        style: TextStyle(
                          color: wColor,
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Container(
                      margin: EdgeInsets.only(top: 7, bottom: 12),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: wColor,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: sdColor,
                            blurRadius: 6,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 19,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: bColor.withOpacity(0.7),
                  ),
                ),
              ),
              SizedBox(height: 7),
              Container(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catNames.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 18),
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: wColor,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: sdColor,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            catNames[index],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: bColor.withOpacity(0.7),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Recommended Doctors",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: bColor.withOpacity(0.7),
                  ),
                ),
              ),
              SizedBox(height: 5),
              DoctorsSection(),
            ]),
          )
        ],
      )),
    );
  }
}
