import 'package:flutter/material.dart';
import 'package:kosanMobile/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imgUrl;
  final bool isActive;

  BottomNavbarItem({this.imgUrl, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imgUrl,
          width: 26,
        ),
        Spacer(),
        isActive
            ? Container(
                height: 2,
                width: 30,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
