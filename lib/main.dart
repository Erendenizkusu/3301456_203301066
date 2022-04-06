import 'package:favori_filmim_odev/bottom_navigation_bar_widget.dart';
import 'package:favori_filmim_odev/exercise.dart';
import 'package:favori_filmim_odev/login_screen.dart';
import 'package:favori_filmim_odev/personal.dart';
import 'package:favori_filmim_odev/register_screen.dart';
import 'package:favori_filmim_odev/splash_screen.dart';
import 'package:favori_filmim_odev/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AntrenmanProgramim());

class AntrenmanProgramim extends StatelessWidget {
  const AntrenmanProgramim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Antrenman Programım",
      initialRoute: "/",
      routes: {
        "/":(context) => const SplashScreen(),
        "/welcome":(context) => const WelcomeScreen(),
        "/login":(context) => const LoginScreen(),
        "/register":(context) => const RegisterScreen(),
        "/home":(context) => const BottomNavigationBarWidget(),
        "/exercise":(context) => const Exercise(),
        "/personnel":(context) => const Personel(),
      },
    );
  }
}
