import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grabber/Core/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      title: Row(
        children: [
          Icon(Icons.delivery_dining_outlined),
          Text(" 61 Hopper Street..", style: AppStyles.styleBold16(context)),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      actions: [
        Padding(padding: const EdgeInsets.only(right: 10.0), child: Icon(CupertinoIcons.moon_stars_fill, size: 24)),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
