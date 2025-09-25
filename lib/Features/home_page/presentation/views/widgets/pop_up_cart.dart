import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber/Core/utils/app_styles.dart';
import 'package:grabber/Core/utils/assets.dart';
import 'package:grabber/Core/utils/colors.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/cart_item_builder.dart';

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
          Expanded(child: CartItemBuilder()),
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
