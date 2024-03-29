import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';


class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            Text(onBoardingList[i].title!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20)),
            const  SizedBox(height: 50,),
            Image.asset(onBoardingList[i].image!),
            const  SizedBox(height:80),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(height:2,color:AppColor.grey,fontWeight: FontWeight.bold,)

                )

            )
          ],
        ));
  }
}
