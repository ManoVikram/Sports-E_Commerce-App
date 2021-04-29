import 'package:flutter/material.dart';

class CartProductTile extends StatelessWidget {
  final Color backgroundColor;
  final String image;
  final String name;
  final int price;
  final int quantity;

  const CartProductTile({
    Key? key,
    required this.size,
    required this.backgroundColor,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.0,
            width: size.width * 0.4,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(48.0),
                bottomRight: Radius.circular(48.0),
              ),
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                image,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 14.0,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.blueGrey[700],
                fontSize: 20.0,
              ),
              children: [
                TextSpan(
                  text: "$name\n",
                ),
                TextSpan(
                  text: "\$$price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Icon(
                    Icons.remove,
                    size: 14.0,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  height: 26.0,
                  width: 26.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Center(
                    child: Text("$quantity"),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 14.0,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
