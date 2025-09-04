import 'package:flutter/material.dart';

import 'color.dart';

ThemeData  themeEnglish =ThemeData(
  fontFamily: "playfairDisplay",
  textTheme: const TextTheme(
    displayLarge:  TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20,color:AppColor.black) ,
    bodyLarge: TextStyle(
        height:2,color:AppColor.grey,fontWeight: FontWeight.bold,fontSize: 17),
    bodyMedium: TextStyle(
        height:2,color:AppColor.grey,fontSize: 14),
  ),
);

ThemeData  themeArabic =ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge:  TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20,color:AppColor.black) ,
    bodyLarge: TextStyle(
        height:2,color:AppColor.grey,fontWeight: FontWeight.bold,fontSize: 17),
    bodyMedium: TextStyle(
        height:2,color:AppColor.grey,fontSize: 14),
  ),
);