import 'package:flutter/material.dart';
import 'package:tes_project/theme.dart';
import 'package:tes_project/models/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imgUrl,
          height: 80,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          // Rata Kiri
          crossAxisAlignment: CrossAxisAlignment.start,
          //
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updateAt}',
              style: greyTextStyle,
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
