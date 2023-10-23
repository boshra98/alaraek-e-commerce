import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column( children: [
        Expanded(
          flex: 3,
          child: PageView.builder(
              itemCount: onBoadingList.length,
              itemBuilder: (context, i) => Column(
                children: [
                  Text(onBoadingList[i].title!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  const  SizedBox(height: 50,),
                  Image.asset(onBoadingList[i].image!),
                  const  SizedBox(height:80),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                          onBoadingList[i].body!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(height:2,color:AppColor.grey,fontWeight: FontWeight.bold,)

                      )

                  )
                ],
              )),
        ),
          Expanded(
          flex:1,
          child: Column(children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              ...List.generate(onBoadingList.length, (index) => AnimatedContainer(
                margin:const EdgeInsets.only(right:5),
                duration:const Duration(milliseconds:900),
                width:6,
                height:6,
                decoration:BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10)
                ),
              ))
            ],),
             const Spacer(flex: 2,),
            Container(
              margin: const EdgeInsets.only(bottom:30)  ,
              height:40,
              child:MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal:100,vertical:0),
                textColor: Colors.white,
                onPressed: (){},color:AppColor.primaryColor,
                  child:const Text("continue" )),

            )

            
          ],
          ))
      ]),
    ));
  }
}
