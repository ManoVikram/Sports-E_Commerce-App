import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DockedFAB extends StatelessWidget {
  const DockedFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.0,
      width: 72.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFFF243C),
        border: Border.all(
          color: Colors.white,
          width: 8.0,
        ),
      ),
      child: Icon(
        CupertinoIcons.home,
        color: Colors.white,
        size: 28.0,
      ),
    );
  }
}
