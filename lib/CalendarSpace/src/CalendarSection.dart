import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solveMathApp/CalendarSpace/src/CalenderPellet.dart';

class CanlendarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bảng xếp hạng đóng góp',
                  style: GoogleFonts.quicksand(
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 18.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_left,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 7.0),
                    Container(
                      height: 18.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_right,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: dates
                  .map((e) => CalendarPellet(
                        date: e,
                        day: days[dates.indexOf(e)],
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
