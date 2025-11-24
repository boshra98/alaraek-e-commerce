import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/core/localization/changelocal.dart';
import 'package:flutter_app_ecommerce/core/services/services.dart';
import 'package:flutter_app_ecommerce/view/screen/home.dart';
import 'package:flutter_app_ecommerce/view/screen/language.dart';
import 'package:flutter_app_ecommerce/view/screen/onboarding.dart';
import 'package:flutter_app_ecommerce/view/screen/splashscreen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/constant/color.dart';
import 'core/localization/translatio.dart';
import 'router.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale:controller.language,
      theme: ThemeData(
        fontFamily: "playfairDisplay",
        textTheme: const TextTheme(
          displayLarge:  TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18,color:AppColor.black) ,
          bodyLarge: TextStyle(
              height:2,color:AppColor.grey,fontWeight: FontWeight.bold,fontSize: 14),
          bodyMedium: TextStyle(
              height:2,color:AppColor.grey,fontSize: 12),
        ),
      ),
      // home:const Language(),
      // home:  Home()
     home:   SplashScreen(),
      routes: routes,
    );
  }


}




// // بدلاً من MaterialApp
// GetMaterialApp(
// // ...
// initialRoute: AppRoute.Language, // أو أي مسار ابتدائي
// getPages: [
// GetPage(name: AppRoute.login, page: () => const Login()),
// GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
// GetPage(name: AppRoute.Home, page: () => const Home()),
// GetPage(name: AppRoute.Language, page: () => const Language()),
// // يمكنك هنا إضافة bindings للـ controllers، و middlewares، إلخ.
// ],
// )