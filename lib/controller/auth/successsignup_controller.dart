import 'package:flutter_app_ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToPageLogin() ;
}

class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login) ;
  }


}