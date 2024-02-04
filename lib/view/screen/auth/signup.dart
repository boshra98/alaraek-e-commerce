import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/core/constant/color.dart';
import 'package:flutter_app_ecommerce/view/widget/auth/logoauth.dart';
import 'package:flutter_app_ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter_app_ecommerce/view/widget/language/custombuttomlang.dart';
import 'package:get/get.dart';

import 'package:get/get_utils/get_utils.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../widget/auth/custombuttomauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/customtextbodyauth.dart';



class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller= Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
          centerTitle:true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('17'.tr, style:Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey))
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 30),
        child:ListView(children: [

          // SizedBox(height: 20,) ,
           CustomTextTitleAuth(text: "10".tr ,) ,
          const  SizedBox(height: 10) ,
            CustomTextBodyauth(text: "24".tr),
          const  SizedBox(height: 15) ,
           CustomTextFormAuth(
            mycontroller: controller.username,
            hinttext: "23".tr,
            iconData: Icons.person ,
            labeltext: "20".tr,

          ) ,
             CustomTextFormAuth(
               mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.lock_outline,
            labeltext: "18".tr,
            //mycontrller
          ) ,

            CustomTextFormAuth(
            mycontroller: controller.phone,
            hinttext: "22".tr,
            iconData: Icons.phone_android,
            labeltext: "21".tr,
            //mycontrller
          ) ,
            CustomTextFormAuth(
              mycontroller: controller.password,
            hinttext: "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr,
            //mycontrller
          ) ,

          CustomButtomAuth(text:"17".tr,onPressed:(){
            controller.signUp() ;
          },),
          const  SizedBox(height: 40,),
          CustomTextSignUpOrSignIn(
            textone: "25".tr,
            texttwo: "26".tr,
            onTap: (){
              controller.goToSignIn();
            },
          ),

        ]),
      ),

    );


  }

}
