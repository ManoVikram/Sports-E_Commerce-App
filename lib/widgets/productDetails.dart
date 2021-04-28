import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nike Power 5",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          children: [
            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemSize: 20.0,
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "56 Reviews",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              "\$30",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          "The medium-sized Nike Power 5 Backpack is ideal for packing everything you need to get you throught the day of training when when you're away from home or locker.",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        SizedBox(
          height: 14.0,
        ),
        Row(
          children: [
            Text(
              "Quantity",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Container(
              height: 24.0,
              width: 24.0,
              padding: EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Icon(
                CupertinoIcons.minus,
                size: 14.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 30.0,
              width: 30.0,
              padding: EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: Text(
                "10",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 24.0,
              width: 24.0,
              padding: EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Icon(
                CupertinoIcons.add,
                size: 14.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
