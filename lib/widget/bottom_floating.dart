import 'package:flutter/material.dart';
import 'package:hotel_app/theme.dart';
import 'package:hotel_app/widget/menu_floating.dart';

class BottomFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 71,
      color: whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuFloating(
                  imageurl: 'assets/home.png',
                  title: 'Home',
                  isActive: true,
                ),
                MenuFloating(
                  imageurl: 'assets/search.png',
                  title: 'Search',
                  isActive: false,
                ),
                MenuFloating(
                  imageurl: 'assets/order.png',
                  title: 'Order',
                  isActive: false,
                ),
                MenuFloating(
                  imageurl: 'assets/user.png',
                  title: 'User',
                  isActive: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
