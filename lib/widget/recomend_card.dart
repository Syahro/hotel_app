import 'package:flutter/material.dart';
import 'package:hotel_app/theme.dart';

class RecomendCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String rating;
  final String price;

  RecomendCard({
    this.imageUrl,
    this.name,
    this.location,
    this.rating,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          name,
                          style: mediumTextstyle.copyWith(
                            fontSize: 16,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: redColor,
                              size: 15,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              location,
                              style: regularTextStyle.copyWith(
                                fontSize: 14,
                                color: greyColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          rating,
                          style: mediumTextstyle.copyWith(
                            fontSize: 12,
                            color: greyColor,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: greyColor.withOpacity(0.2),
          ),
          SizedBox(
            height: 19,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price Start from:',
                  style: regularTextStyle.copyWith(
                    fontSize: 12,
                    color: greyColor,
                  ),
                ),
                Text.rich(TextSpan(
                    text: price,
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 14,
                      color: blueColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' /night',
                        style: regularTextStyle.copyWith(
                          fontSize: 10,
                          color: greyColor,
                        ),
                      )
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
