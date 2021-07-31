import 'package:flutter/material.dart';
import 'package:hotel_app/theme.dart';

class MenuFloating extends StatelessWidget {
  final String imageurl;
  final String title;
  final bool isActive;

  MenuFloating({
    this.imageurl,
    this.title,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageurl,
          width: 19,
          height: 20,
          color: isActive ? blueColor : greyColor,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: regularTextStyle.copyWith(
            fontSize: 14,
            color: isActive ? blueColor : greyColor,
          ),
        )
      ],
    );
  }
}
