import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:untitled/features/instagram/instagram_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(home: InstagramSplash()),
    );
  }
}
