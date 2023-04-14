import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class TextFonts {
  static TextFonts instance = TextFonts._init();

  TextFonts._init();

  final smallText =
  TextStyle(
    fontFamily: 'Montserrat',
    color: ColorConstants.instance.titleColor,
    fontSize: 15,
  );

  final middleTitle =
  TextStyle(
    fontFamily: 'Poppins',
    fontSize: 23,
    color: ColorConstants.instance.titleColor,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  final appBarTitle =
  TextStyle(
    fontFamily: 'Poppins',
    fontSize: 23,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  final middleText =
  TextStyle(
            fontFamily: 'Poppins,Regular',
            fontSize: 18,
            color: ColorConstants.instance.titleColor,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
      );


  final titleFont =
  TextStyle(
            fontFamily: 'Poppins',
            color: ColorConstants.instance.titleColor,
            fontSize: 28,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal,

  );

    final imageFront =
  TextStyle(
    fontFamily: 'Poppins-Bold',
    color: ColorConstants.instance.imageFrontTextColor,
    fontSize: 25,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );

    final priceFont =
        TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: ColorConstants.instance.titleColor,
        );

    final underlineFont =
        TextStyle(
          fontFamily: 'Poppins',
          color: ColorConstants.instance.titleColor,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w600,
          fontSize: 16,

        );

    final imageFrontRating = TextStyle(
      fontFamily: 'Montserrat',
      color: ColorConstants.instance.imageFrontTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );

    final boldText = TextStyle(
      fontFamily: 'Poppins-Bold',
      color: ColorConstants.instance.titleColor,
      fontSize: 30,
  );

    final weekText = TextStyle(
      fontFamily: 'Poppins-Regular',
      color: Colors.grey,
      fontSize: 20
    );

}
