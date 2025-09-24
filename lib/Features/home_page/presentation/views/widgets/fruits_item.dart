import 'package:flutter/material.dart';
import 'package:grabber/Core/utils/app_styles.dart';
import 'package:grabber/Features/home_page/data/models/fruits_model.dart';

class FruitsItem extends StatelessWidget {
  const FruitsItem({super.key, required this.fruitsModel});
  final FruitsModel fruitsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(140, 224, 223, 223),
                    ),
                    child: Image.asset(fruitsModel.image, height: 120),
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
              Text(fruitsModel.name, style: AppStyles.styleBold16(context)),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.star_rounded, color: Colors.amberAccent),
                  Text(fruitsModel.rate.toString(), style: AppStyles.styleSemiBold14(context)),
                  Text("(${fruitsModel.rateCount})", style: AppStyles.styleSemiBold14(context)),
                ],
              ),
              Text(fruitsModel.price, style: AppStyles.styleBold16(context)),
            ],
          ),
        ),
      ),
    );
  }
}
