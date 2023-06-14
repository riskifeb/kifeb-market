import 'package:flutter/material.dart';
import 'package:kifeb/data.dart';
import 'package:kifeb/rating_component.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.itemCards});

  final FeaturedCard itemCards;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Card(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(itemCards.imgUrl), fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    itemCards.name,
                    style:
                        TextStyle(fontSize: 16, fontFamily: "Poppins-Regular"),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [StarRating(), Text(itemCards.rate.toString())],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
