import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),
        () => Navigator.of(context).pop("/loginscreen")
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(child: Image.asset('images/abs_background.jpg', fit: BoxFit.cover),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        )
        ),
      );
  }
}
