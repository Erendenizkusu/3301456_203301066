import 'package:get_invincible/bottom_navigation_bar_widget.dart';
import 'package:get_invincible/exercise.dart';
import 'package:get_invincible/login_screen.dart';
import 'package:get_invincible/personal.dart';
import 'package:get_invincible/register_screen.dart';
import 'package:get_invincible/splash_screen.dart';
import 'package:get_invincible/welcome_screen.dart';
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
