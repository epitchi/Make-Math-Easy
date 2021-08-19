import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<int> dates = [1, 2, 3, 4, 5, 6, 7];
List<String> days = [
  'Nguyễn Mạnh Quyền',
  'Trần Mai Linh',
  'Trần Thị Mai Linh',
  'Nguyễn Công Huy',
  'Nguyễn Văn An',
  'Tống Trường An',
  'Phan Hữu Phước'
];

class CalendarPellet extends StatelessWidget {
  final int date;
  final String day;

  CalendarPellet({this.date, this.day});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
      decoration: BoxDecoration(
          color: (date == 1) ? Colors.amber : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 7.5,
              spreadRadius: 1.0,
              color: Colors.black12,
            )
          ]),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              date.toString(),
              style: GoogleFonts.quicksand(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: (date == 24) ? Colors.white : Colors.black,
              ),
            ),
          ),
          SizedBox(width: 5.0, height: 5.0,),
          Text(
            day.toString(),
            style: GoogleFonts.quicksand(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              color: (date == 24) ? Colors.white : Colors.black38,
            ),
          ),
          SizedBox(height: 5.0,),
        ],
      ),
    );
  }
}
