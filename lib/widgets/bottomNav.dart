import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.0,
      margin: EdgeInsets.only(top: 8.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFFF243C),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36.0),
          topRight: Radius.circular(36.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              // icon: SvgPicture.asset("assets/icons/Menu 2.svg"),
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 28.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.white,
                size: 28.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bag,
                color: Colors.white,
                size: 28.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              // icon: SvgPicture.asset("assets/icons/Menu 2.svg"),
              icon: Icon(
                CupertinoIcons.person_circle,
                color: Colors.white,
                size: 28.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
