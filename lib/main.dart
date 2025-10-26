import 'package:books_app/constants.dart';
import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // navigation
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      debugShowCheckedModeBanner: false,

      home: const SplashView(),
    );
  }
}
