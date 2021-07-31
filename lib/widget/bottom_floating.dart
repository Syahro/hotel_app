import 'package:flutter/material.dart';
import 'package:hotel_app/pages/home_page.dart';
import 'package:hotel_app/pages/search_page.dart';
import 'package:hotel_app/theme.dart';
import 'package:hotel_app/widget/menu_floating.dart';

class BottomFloating extends StatelessWidget {
  final bool isHome;
  final bool isSearch;
  final bool isOrder;
  final bool isUser;

  BottomFloating({
    this.isHome,
    this.isSearch,
    this.isOrder,
    this.isUser,
  });
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  },
                  child: MenuFloating(
                    imageurl: 'assets/home.png',
                    title: 'Home',
                    isActive: isHome,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SearchPage();
                        },
                      ),
                    );
                  },
                  child: MenuFloating(
                    imageurl: 'assets/search.png',
                    title: 'Search',
                    isActive: isSearch,
                  ),
                ),
                MenuFloating(
                  imageurl: 'assets/order.png',
                  title: 'Order',
                  isActive: isOrder,
                ),
                MenuFloating(
                  imageurl: 'assets/user.png',
                  title: 'User',
                  isActive: isUser,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
