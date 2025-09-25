import 'package:flutter/material.dart';
import 'package:grabber/Core/utils/app_styles.dart';
import 'package:grabber/Core/utils/colors.dart';

class FruitsHeader extends StatelessWidget {
  const FruitsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Fruits",
            style: AppStyles.styleBold16(
              context,
            ).copyWith(color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black),
          ),
          Text("See all", style: AppStyles.styleSemiBold14(context).copyWith(color: AppColors.primaryColor)),
        ],
      ),
    );
  }
}
