import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/core/constant/routes.dart';
import 'package:flutter_app_ecommerce/view/screen/onboarding.dart';
import 'view/screen/auth/login.dart';

Map<String,Widget Function(BuildContext)> routes = {
  AppRoute.login:(context) => const Login(),

  AppRoute.onBoarding:(context) => const OnBoarding() ,
  // AppRoute.onBoarding:(context) => const OnBoarding() ,


};