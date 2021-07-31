import 'package:flutter/material.dart';
import 'package:hotel_app/theme.dart';

class LatestSearch extends StatelessWidget {
  final String keyWord;

  LatestSearch({
    this.keyWord,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: greyColor.withOpacity(0.5),
        ),
      ),
      child: Text(
        keyWord,
        style: regularTextStyle.copyWith(
          fontSize: 14,
          color: blackColor,
        ),
      ),
    );
  }
}
