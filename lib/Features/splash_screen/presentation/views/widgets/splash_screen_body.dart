import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:grabber/Core/utils/app_route.dart';
import 'package:grabber/Core/utils/assets.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> slideTransiton;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    slideTransiton = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        context.pushReplacement(AppRoute.homeScreen);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        builder: (context, child) => SlideTransition(
          position: slideTransiton,
          child: Center(child: SvgPicture.asset(Assets.imagesGrabber)),
        ),
        animation: slideTransiton,
      ),
    );
  }
}
