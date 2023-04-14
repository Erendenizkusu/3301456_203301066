import 'package:firebase_core/firebase_core.dart';
import 'package:get_invincible/core/colors.dart';
import 'package:get_invincible/screens/bottom_navigation_bar_widget.dart';
import 'package:get_invincible/screens/exercise.dart';
import 'package:get_invincible/screens/extras.dart';
import 'package:get_invincible/screens/package_detail.dart';
import 'package:get_invincible/screens/pages/home_page.dart';
import 'package:get_invincible/screens/personal.dart';
import 'package:get_invincible/screens/product.dart';
import 'package:get_invincible/screens/social_media.dart';
import 'package:get_invincible/screens/splash_screen.dart';
import 'package:get_invincible/screens/succesful_register.dart';
import 'package:flutter/material.dart';
import 'package:get_invincible/widget_tree.dart';
import 'screens/blok.dart';
import 'screens/buy_package.dart';
import 'screens/buy_package_end.dart';
import 'screens/package.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AntrenmanProgramim());
}

class AntrenmanProgramim extends StatelessWidget {
  const AntrenmanProgramim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Get Invincible",
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: ColorConstants.instance.titleColor)),
      initialRoute: "loginscreen",
      routes: {
        "/":(context) => const SplashScreen(),
        "loginscreen":(context) => const WidgetTree(),
        "/homepage":(context) => HomePage(),
        "/home":(context) => const BottomNavigationBarWidget(),
        "/exercise":(context) => const Exercise(),
        "/personnel":(context) => const Personel(),
        "/successful":(context)=>const SuccesfulRegister(),
        "/extras":(context)=>const Extras(),
        "/social":(context)=>const SocialScreen(),
        "/package":(context)=>const Package(),
        "/product":(context)=>const Product(),
        "/package_detail":(context)=>const PackageDetail(),
        "/buy_package":(context)=>const BuyPackage(),
        "/buy_package_end":(context)=>const BuyPackageEnd(),
        "/block":(context)=>const BlockInformations(),
      },
    );
  }
}