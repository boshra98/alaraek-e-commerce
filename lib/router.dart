import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/core/constant/routes.dart';
import 'package:flutter_app_ecommerce/view/screen/auth/checkemail.dart';
import 'package:flutter_app_ecommerce/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:flutter_app_ecommerce/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:flutter_app_ecommerce/view/screen/auth/signup.dart';
import 'package:flutter_app_ecommerce/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:flutter_app_ecommerce/view/screen/auth/success_signup.dart';
import 'package:flutter_app_ecommerce/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:flutter_app_ecommerce/view/screen/onboarding.dart';
import 'view/screen/auth/login.dart';

Map<String,Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login:(context) => const Login(),
  AppRoute.signUp:(context) => const SignUp(),
  AppRoute.forgetPassword:(context) => const ForgetPassword(),
  AppRoute.verfiyCode:(context) => const VerifyCode(),
  AppRoute.resetPassword:(context) => const ResetPassword(),
  AppRoute.checkemail:(context) => const CheckEmail(),

  AppRoute.successResetPassword:(context) => const SuccessResetPassword(),
  AppRoute.successSignUp:(context) => const SuccessSignUp(),



  //OnBoarding
  AppRoute.onBoarding:(context) => const OnBoarding() ,
  // AppRoute.onBoarding:(context) => const OnBoarding() ,


};