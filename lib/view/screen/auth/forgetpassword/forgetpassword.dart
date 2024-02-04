import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/controller/auth/forgetpassword_controller.dart';
import 'package:flutter_app_ecommerce/core/constant/color.dart';
import 'package:get/get.dart';
import '../../../widget/auth/custombuttomauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';



class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller= Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
          centerTitle:true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('14'.tr, style:Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey))
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 30),
        child:ListView(children: [

          const SizedBox(height: 20,) ,
            CustomTextTitleAuth(text: "27".tr ,) ,
          const  SizedBox(height: 10) ,
            CustomTextBodyauth(text: "29".tr),
          const  SizedBox(height: 15) ,

          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.lock_outline,
            labeltext: "18".tr,
            //mycontrller
          ) ,




          CustomButtomAuth(text:"30".tr,onPressed:(){
            controller.goToVerfiyCode();
          },),
          const  SizedBox(height: 40,),


        ]),
      ),

    );


  }

}
