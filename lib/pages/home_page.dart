import 'package:flutter/material.dart';
import 'package:hotel_app/theme.dart';
import 'package:hotel_app/widget/bottom_floating.dart';
import 'package:hotel_app/widget/recomend_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: BottomFloating(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 125,
                  width: double.infinity,
                  color: blueColor,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    defaultMargin,
                    26,
                    0,
                    26,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: defaultMargin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                color: whiteColor.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/menu.png',
                                  width: 12,
                                  height: 12,
                                ),
                              ),
                            ),
                            Text(
                              'Discover',
                              style: semiBoldTextStyle.copyWith(
                                fontSize: 20,
                                color: whiteColor,
                              ),
                            ),
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                color: whiteColor.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/notif.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4, left: 14),
                                    child: Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        color: redColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Container(
                        height: 80,
                        width: double.infinity,
                        margin: EdgeInsets.only(right: defaultMargin),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: defaultMargin,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Your Balance',
                                    style: regularTextStyle.copyWith(
                                      fontSize: 14,
                                      color: greyColor,
                                    ),
                                  ),
                                  Text(
                                    'IDR 9.200.301',
                                    style: semiBoldTextStyle.copyWith(
                                      fontSize: 18,
                                      color: blueColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: blueColor.withOpacity(0.14),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: blueColor,
                                    size: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: defaultMargin,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recommended Hotels',
                              style: semiBoldTextStyle.copyWith(
                                fontSize: 18,
                                color: blackColor,
                              ),
                            ),
                            Text(
                              'View all',
                              style: mediumTextstyle.copyWith(
                                fontSize: 12,
                                color: blueColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            RecomendCard(
                              imageUrl: 'assets/recom1.png',
                              name: 'Bimosaurus Hotel',
                              location: 'Safari, Buitenzorg',
                              rating: '4.9',
                              price: 'IDR 599,999',
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            RecomendCard(
                              imageUrl: 'assets/recom2.png',
                              name: 'Daino Sas Hotel',
                              location: 'Bali, Denpasar',
                              rating: '4.9',
                              price: 'IDR 559,999',
                            ),
                            SizedBox(
                              width: defaultMargin,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: defaultMargin),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'New Hotels Experience',
                                  style: semiBoldTextStyle.copyWith(
                                    fontSize: 18,
                                    color: blackColor,
                                  ),
                                ),
                                Text(
                                  'View all',
                                  style: mediumTextstyle.copyWith(
                                    fontSize: 12,
                                    color: blueColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 94,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 12,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'assets/new1.png',
                                        width: 72,
                                        height: double.infinity,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Skytown Hotel',
                                          style: mediumTextstyle.copyWith(
                                            fontSize: 14,
                                            color: blackColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'Sibolga, Medan',
                                          style: regularTextStyle.copyWith(
                                            fontSize: 12,
                                            color: greyColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          '4.9',
                                          style: mediumTextstyle.copyWith(
                                            fontSize: 12,
                                            color: greyColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: yellowColor,
                                          size: 16,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 59,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
