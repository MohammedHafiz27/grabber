import 'package:flutter/material.dart';
import 'package:grabber/Core/utils/app_styles.dart';
import 'package:grabber/Core/utils/assets.dart';

class FruitsItem extends StatelessWidget {
  const FruitsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(140, 224, 223, 223),
              ),
              child: Image.asset(Assets.imagesBanana, height: 150),
            ),
            Positioned(
              right: 1,
              bottom: 1,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(Icons.add_circle_outline_outlined, color: Colors.white, size: 38),
              ),
            ),
          ],
        ),
        Text("Banana", style: AppStyles.styleBold16(context)),
        Row(
          spacing: 8,
          children: [
            Icon(Icons.star_rounded, color: Colors.amberAccent),
            Text("4.8", style: AppStyles.styleSemiBold14(context)),
            Text("(287)", style: AppStyles.styleSemiBold14(context)),
          ],
        ),
        Text("\$3.99", style: AppStyles.styleBold16(context)),
      ],
    );
  }
}
