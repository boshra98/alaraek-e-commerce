import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/core/constant/imageasset.dart';
// افترض أن 'language_page.dart' هو الملف الذي يحتوي على ودجت Language
import 'language.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // قم بتأخير التنقل لبضع ثوانٍ
    Timer(
      const Duration(seconds: 3), // مدة عرض شاشة البداية
          () => Navigator.pushReplacement( // استخدم pushReplacement لمنع العودة لشاشة البداية
        context,
        MaterialPageRoute(builder: (context) => const Language()), // انتقل إلى صفحة اللغة
        // أو يمكنك استخدام
        //     Navigator.pushReplacementNamed(context, '/language') as Route<Object?>
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // تصميم شاشة البداية الخاصة بك هنا
      // يمكن أن يكون لون خلفية بسيط، أو شعار، أو صورة متحركة
      // backgroundColor: Colors.blue, // مثال
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [

            CircleAvatar(
              radius: 90, //  نصف قطر الدائرة (يتحكم في حجمها). 100 / 2 = 50
              // استخدم AssetImage مباشرة لـ backgroundImage
              backgroundImage: AssetImage(ImageAsset.logo),
              // يمكنك أيضًا تحديد لون خلفية في حال لم يتم تحميل الصورة أو كانت الصورة شفافة
              backgroundColor: Colors.grey,
            ),

          ],
        ),
      ),
    );
  }
}
