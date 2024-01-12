import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/core/constant/color.dart';
import 'package:get/get_utils/get_utils.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle:true,
            backgroundColor: AppColor.backgroundcolor,
            elevation: 0.0,
            title: Text('Sign In', style:Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey))
        ),
        body: Container(
            padding: EdgeInsets.all(15),
            child:ListView(children: [
              const SizedBox(height: 20,) ,
              Text("2".tr ,textAlign:TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),
              const SizedBox(height: 10) ,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text("sign in with your email and password or continue with social media" ,textAlign:TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,),
              ),
            ],)
        )

    );


  }

}
