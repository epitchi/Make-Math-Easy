import 'package:flutter/material.dart';
import 'package:solveMathApp/CalendarSpace/src/CalendarSection.dart';
import 'package:solveMathApp/CalendarSpace/src/MeetingSection.dart';
import 'package:solveMathApp/CalendarSpace/src/TopContainer.dart';

class CalenderSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color(0xfff7f7ff),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(children: [
          SizedBox(
            height: 30.0,
          ),
          TopContainer(),
          CanlendarSection(),
          MeetingsSection(),
          ClipRRect(
            child: Image.asset(
              'assets/image.png',
              height: 300.0,
              width: 400.0,
            ),
          ),
        ]),
      ),
    );
  }
}
