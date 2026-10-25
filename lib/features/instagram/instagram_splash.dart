import 'package:flutter/material.dart';
import 'package:untitled/features/instagram/login_screen.dart';

class InstagramSplash extends StatefulWidget {
  const InstagramSplash({super.key});

  @override
  State<InstagramSplash> createState() => _InstagramSplashState();
}

class _InstagramSplashState extends State<InstagramSplash> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset("assets/images/Path.png")));
  }
}
