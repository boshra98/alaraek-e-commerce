// import 'package:flutter/material.dart';
//
// import '../../core/constant/color.dart';
// import '../../data/datasource/static/static.dart';
//
// class OnBoarding extends StatelessWidget {
//   const OnBoarding({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Column( children: [
//         Expanded(
//           flex: 3,
//           child: PageView.builder(
//               itemCount: onBoardingList.length,
//               itemBuilder: (context, i) => Column(
//                 children: [
//                   Text(onBoardingList[i].title!,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 20)),
//                   const  SizedBox(height: 50,),
//                   Image.asset(onBoardingList[i].image!),
//                   const  SizedBox(height:80),
//                   Container(
//                       width: double.infinity,
//                       alignment: Alignment.center,
//                       child: Text(
//                           onBoardingList[i].body!,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(height:2,color:AppColor.grey,fontWeight: FontWeight.bold,)
//
//                       )
//
//                   )
//                 ],
//               )),
//         ),
//           Expanded(
//           flex:1,
//           child: Column(children: [
//             Row(
//               mainAxisAlignment:MainAxisAlignment.center,
//               children: [
//               ...List.generate(onBoardingList.length, (index) => AnimatedContainer(
//                 margin:const EdgeInsets.only(right:5),
//                 duration:const Duration(milliseconds:900),
//                 width:6,
//                 height:6,
//                 decoration:BoxDecoration(
//                     color: AppColor.primaryColor,
//                     borderRadius: BorderRadius.circular(10)
//                 ),
//               ))
//             ],),
//              const Spacer(flex: 2,),
//             Container(
//               margin: const EdgeInsets.only(bottom:30)  ,
//               height:40,
//               child:MaterialButton(
//                 padding: const EdgeInsets.symmetric(horizontal:100,vertical:0),
//                 textColor: Colors.white,
//                 onPressed: (){},color:AppColor.primaryColor,
//                   child:const Text("continue" )),
//
//             )
//
//
//           ],
//           ))
//       ]),
//     ));
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import '../widget/onboarding/custombutton.dart';
import '../widget/onboarding/customslider.dart';
import '../widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
        body: SafeArea(
          child: Column( children: [
            Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex:1,
                child: Column(
                  children: [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2,),
                    CustomButtonOnBoarding()

                  ],
                ))
          ]),
        ));
  }
}
