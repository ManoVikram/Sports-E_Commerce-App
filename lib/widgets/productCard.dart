import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String brandName;
  final String productName;
  final String image;
  final int price;
  final Color cardColor;

  const ProductCard({
    Key? key,
    required this.brandName,
    required this.productName,
    required this.image,
    required this.price,
    required this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 220,
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 36.0,
        top: 20.0,
      ),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(36.0),
        boxShadow: [
          cardColor == Colors.white
              ? BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: Offset(5, 10),
                  blurRadius: 30.0,
                  spreadRadius: 2.0,
                )
              : BoxShadow(
                  color: Color(0xFFFF243C).withOpacity(0.4),
                  offset: Offset(5, 10),
                  blurRadius: 30.0,
                  spreadRadius: 2.0,
                ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 26.0,
                      color: cardColor == Colors.white
                          ? Colors.black
                          : Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "$brandName\n",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: productName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$$price",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color:
                        cardColor == Colors.white ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 160.0,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  bottom: 10.0,
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: cardColor == Colors.white
                      ? Color(0xFFFF243C)
                      : Colors.white,
                ),
              ),
              Container(
                height: 48.0,
                width: 80.0,
                decoration: BoxDecoration(
                  color: cardColor == Colors.white
                      ? Color(0xFFFF243C)
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.0),
                    bottomRight: Radius.circular(36.0),
                  ),
                ),
                child: Icon(
                  Icons.add,
                  color: cardColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
