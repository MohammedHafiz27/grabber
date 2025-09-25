import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/Core/app_theme_cubit/app_theme_cubit.dart';
import 'package:grabber/Core/utils/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit(),
      child: BlocBuilder<AppThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: AppRoute.router,
            themeMode: state,
            darkTheme: ThemeData.dark().copyWith(
              textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
            ),
          );
        },
      ),
    );
  }
}
