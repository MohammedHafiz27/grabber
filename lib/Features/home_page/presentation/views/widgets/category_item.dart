import 'package:flutter/widgets.dart';
import 'package:grabber/Core/utils/app_styles.dart';

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
          decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(140, 224, 223, 223)),
          child: Image.asset(image, height: 50),
        ),
        SizedBox(height: 16),
        Text(name, style: AppStyles.styleBold12(context)),
      ],
    );
  }
}
