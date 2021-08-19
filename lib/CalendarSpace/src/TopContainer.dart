import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Feather.search,
                color: Colors.black54,
                size: 20.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Container(
                height: 20.0,
                width: 20.0,
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.black54,
                      size: 20.0,
                    ),
                    Align(
                      alignment: Alignment(0.7, -0.5),
                      child: Container(
                        height: 5.0,
                        width: 5.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/img_math.png',
              height: 30.0,
              width: 30.0,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
