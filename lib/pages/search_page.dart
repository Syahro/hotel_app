import 'package:flutter/material.dart';
import 'package:hotel_app/theme.dart';
import 'package:hotel_app/widget/bottom_floating.dart';
import 'package:hotel_app/widget/latest_search.dart';
import 'package:hotel_app/widget/suggestion_card.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomFloating(
        isHome: false,
        isSearch: true,
        isOrder: false,
        isUser: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: defaultMargin,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Locations',
                    style: regularTextStyle.copyWith(
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Bandung, ',
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 24,
                        color: blackColor,
                      ),
                      children: [
                        TextSpan(
                          text: 'Indonesia',
                          style: regularTextStyle.copyWith(
                            fontSize: 24,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: greyColor.withOpacity(0.3),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: greyColor.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Text(
                            'Find your Favorite Hotels',
                            style: regularTextStyle.copyWith(
                              fontSize: 14,
                              color: greyColor.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: greyColor.withOpacity(0.5),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lastest Search',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 18,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      LatestSearch(
                        keyWord: 'Mason',
                      ),
                      LatestSearch(
                        keyWord: 'Swissbell',
                      ),
                      LatestSearch(
                        keyWord: 'Yello',
                      ),
                      LatestSearch(
                        keyWord: 'GH Setiabudi',
                      ),
                      LatestSearch(
                        keyWord: 'Damoty Hotel',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Nearby You',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 18,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SuggestionCard(
                    imageUrl: 'assets/near1.png',
                    name: 'GH Setiabuddy',
                    address: 'Setiabuddy, Bandung',
                    isNear: true,
                    star: '',
                    distance: '0,1km',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SuggestionCard(
                    imageUrl: 'assets/near2.png',
                    name: 'Damsaurus Hotel',
                    address: 'Pasteur, Bandung',
                    isNear: true,
                    star: '',
                    distance: '1,6km',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SuggestionCard(
                    imageUrl: 'assets/near3.png',
                    name: 'Andjoy Hotel',
                    address: 'Kebon Jaty, Bandung',
                    isNear: true,
                    star: '',
                    distance: '2,2km',
                  ),
                  SizedBox(height: defaultMargin),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Load More',
                        style: mediumTextstyle.copyWith(
                            fontSize: 12, color: blueColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 110,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
