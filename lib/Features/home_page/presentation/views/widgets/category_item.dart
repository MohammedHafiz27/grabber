import 'package:flutter/material.dart';
import 'package:grabber/Core/utils/app_styles.dart';
import 'package:grabber/Core/utils/colors.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String image;
  const CategoryItem({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.secondryColorDark
                : AppColors.secondryColor,
          ),
          child: Image.asset(image, height: 50),
        ),
        SizedBox(height: 16),
        Text(
          name,
          style: AppStyles.styleBold12(
            context,
          ).copyWith(color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black),
        ),
      ],
    );
  }
}
