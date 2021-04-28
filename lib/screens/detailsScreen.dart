import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/productDetails.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF243C),
      bottomNavigationBar: Container(
        height: 64.3,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 6.0,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFFF243C),
            borderRadius: BorderRadius.circular(36.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.cart,
                size: 28.0,
                color: Colors.white,
              ),
              SizedBox(width: 10.0,),
              Text(
                "Add To My Cart",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36.0,
                vertical: 20.0,
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
                      height: 28.0,
                      color: Colors.white,
                    ),
                  ),
                  Stack(
                    children: [
                      Icon(
                        CupertinoIcons.cart,
                        size: 28.0,
                        color: Colors.white,
                      ),
                      Positioned(
                        top: 0.0,
                        right: 0.0,
                        child: Container(
                          height: 14.0,
                          width: 14.0,
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/bag2.png",
              width: 150,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24.0,
                  width: 24.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red[900],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 24.0,
                  width: 24.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 24.0,
                  width: 24.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF182336),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42.0),
                    topRight: Radius.circular(42.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36.0,
                    vertical: 20.0,
                  ),
                  child: ProductDetails(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


