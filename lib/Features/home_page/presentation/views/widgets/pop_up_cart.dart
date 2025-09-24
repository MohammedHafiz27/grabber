import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber/Core/utils/app_styles.dart';
import 'package:grabber/Core/utils/assets.dart';
import 'package:grabber/Core/utils/colors.dart';

class PopUpCart extends StatelessWidget {
  const PopUpCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.sizeOf(context).width - 30,
      decoration: BoxDecoration(color: ColorsClass.primaryColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 255, 255, 255)),
            child: Image.asset(Assets.imagesBanana, height: 24),
          ),
          VerticalDivider(indent: 12, endIndent: 12),

          Text("View Basket", style: AppStyles.styleBold16(context).copyWith(color: Colors.white)),
          SvgPicture.asset(
            Assets.imagesBasket,
            height: 24,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
