import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grabber/Core/banners_list.dart';

class MyCarouselSlider extends StatelessWidget {
  const MyCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: BannersList.banners.length,
      itemBuilder: (context, index, realIndex) {
        return Image.asset(BannersList.banners[index]);
      },
      options: CarouselOptions(
        viewportFraction: 0.84,
        aspectRatio: 383 / 222,
        initialPage: 0,
        clipBehavior: Clip.none,
        autoPlay: true,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        autoPlayAnimationDuration: Duration(milliseconds: 2500),
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
