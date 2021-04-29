import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/cartScreen.dart';
import '../screens/detailsScreen.dart';
import '../widgets/bottomNav.dart';
import '../widgets/categoryChip.dart';
import '../widgets/dockedFAB.dart';
import '../widgets/productCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DockedFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNav(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/menu.svg",
                        color: Colors.black,
                        width: 28.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => CartScreen(),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/Menu 4.svg",
                              color: Colors.black,
                              width: 28.0,
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                height: 10.0,
                                width: 10.0,
                                margin: EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 36.0,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Our\n",
                          ),
                          TextSpan(
                            text: "Products",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 58.0,
                      width: 58.0,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(0, 7),
                            blurRadius: 20.0,
                            spreadRadius: 5.0,
                          ),
                        ],
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/search.svg",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 36.0,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryChip(
                        text: "Popular",
                        isActive: true,
                      ),
                      CategoryChip(
                        text: "Top Rated",
                      ),
                      CategoryChip(
                        text: "New Collection",
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        brandName: "Nike",
                        productName: "Brasilia",
                        price: 45,
                        image: "assets/images/bag1.png",
                        cardColor: Color(0xFFFF243C),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(),
                            ),
                          );
                        },
                        child: ProductCard(
                          brandName: "Nike",
                          productName: "Power 5",
                          price: 30,
                          image: "assets/images/bag2.png",
                          cardColor: Colors.white,
                        ),
                      ),
                      ProductCard(
                        brandName: "Adidas",
                        productName: "Power",
                        price: 35,
                        image: "assets/images/shoe.png",
                        cardColor: Color(0xFFFF243C),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
