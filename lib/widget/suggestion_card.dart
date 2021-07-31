import 'package:flutter/material.dart';
import 'package:hotel_app/theme.dart';

class SuggestionCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String address;
  final bool isNear;
  final String star;
  final String distance;

  SuggestionCard({
    this.imageUrl,
    this.name,
    this.address,
    this.isNear,
    this.star,
    this.distance,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
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
                imageUrl,
                width: 72,
                height: double.infinity,
              ),
            ),
            SizedBox(
              width: 9,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: mediumTextstyle.copyWith(
                    fontSize: 14,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  address,
                  style: regularTextStyle.copyWith(
                    fontSize: 12,
                    color: greyColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            isNear
                ? Text(
                    distance,
                    style: mediumTextstyle.copyWith(
                      fontSize: 12,
                      color: redColor,
                    ),
                  )
                : Row(
                    children: [
                      Text(
                        star,
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
                  ),
          ],
        ),
      ),
    );
  }
}
