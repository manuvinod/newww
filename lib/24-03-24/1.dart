import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ratingbar extends StatefulWidget {
  const ratingbar({super.key});

  @override
  State<ratingbar> createState() => _ratingbarState();
}

class _ratingbarState extends State<ratingbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            maxRating: 3,
            itemCount: 5,
            itemSize: 50,
            itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
            itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber),
            onRatingUpdate: (rating){
              print(rating);
            }),
      ),
    );
  }
}