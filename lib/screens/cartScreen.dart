import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/cartProductTile.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Container(
        height: 64.2,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFFF243C),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36.0),
            topRight: Radius.circular(36.0),
          ),
          // borderRadius: BorderRadius.circular(36.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.arrow_right,
              color: Colors.white,
              size: 28.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Proceed To Checkout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 36.0,
                left: 30.0,
                right: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      "assets/icons/left.svg",
                      color: Colors.black,
                      width: 28.0,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.trash,
                    size: 28.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Shopping\n",
                    ),
                    TextSpan(
                      text: "Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 42.0,
            ),
            CartProductTile(
              size: size,
              backgroundColor: Color(0xFFFF243C),
              image: "assets/images/bag1.png",
              name: "Nike Brasilia",
              price: 45,
              quantity: 1,
            ),
            CartProductTile(
              size: size,
              backgroundColor: Colors.deepOrangeAccent,
              image: "assets/images/bag2.png",
              name: "Nike Power 5",
              price: 30,
              quantity: 5,
            ),
            CartProductTile(
              size: size,
              // backgroundColor: Color(0xFF7F7F7E),
              backgroundColor: Colors.lightGreenAccent,
              image: "assets/images/shoe.png",
              name: "Adidas Power",
              price: 35,
              quantity: 2,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3 Items",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$110",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
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


