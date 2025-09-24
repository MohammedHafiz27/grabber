
import 'package:flutter/widgets.dart';
import 'package:grabber/Core/utils/app_styles.dart';

class FruitsHeader extends StatelessWidget {
  const FruitsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Fruits", style: AppStyles.styleBold16(context)),
          Text("See all", style: AppStyles.styleSemiBold14(context).copyWith(color: Color(0xff0CA201))),
        ],
      ),
    );
  }
}
