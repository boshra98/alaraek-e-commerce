import 'package:flutter/cupertino.dart';
import 'package:flutter_app_ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController{
 late String verifycode ;

  @override
  checkCode() {

  }

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword) ;

  }

  @override
  void onInit() {
    super.onInit();
  }





}