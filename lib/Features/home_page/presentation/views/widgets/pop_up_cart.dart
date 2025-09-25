import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber/Core/utils/app_styles.dart';
import 'package:grabber/Core/utils/assets.dart';
import 'package:grabber/Core/utils/colors.dart';
import 'package:grabber/Features/home_page/presentation/view%20models/cart_cubit/cart_cubit.dart';
import 'package:grabber/Features/home_page/presentation/views/widgets/cart_item_builder.dart';

class PopUpCart extends StatelessWidget {
  const PopUpCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.sizeOf(context).width - 30,
      decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child: CartItemBuilder()),
          VerticalDivider(indent: 12, endIndent: 12),

          Text("View Basket", style: AppStyles.styleBold16(context).copyWith(color: Colors.white)),
          Badge(
            backgroundColor: Colors.red,
            label: Text(
              context.read<CartCubit>().state.length.toString(),
              style: AppStyles.styleBold12(context).copyWith(color: Colors.white),
            ),
            child: SvgPicture.asset(
              Assets.imagesBasket,
              height: 32,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),

          SizedBox(width: 16),
        ],
      ),
    );
  }
}
