import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star_border,
          color: Colors.amber,
          size: 20,
        )
      ],
    );
  }
}
