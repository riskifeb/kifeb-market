import 'package:flutter/material.dart';
import 'package:kifeb/rating_component.dart';

class RecomendedItem extends StatelessWidget {
  final String name;
  final String rate;
  final String imgUrl;
  final String price;

  const RecomendedItem(
      {super.key,
      required this.name,
      required this.rate,
      required this.imgUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          imgUrl,
          width: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
        Row(
          children: [StarRating(), Text(rate.toString())],
        )
      ],
    );
  }
}
