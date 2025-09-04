import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/core/localization/changelocal.dart';
import 'package:flutter_app_ecommerce/core/services/services.dart';
import 'package:flutter_app_ecommerce/test.dart';
import 'package:flutter_app_ecommerce/view/screen/language.dart';
import 'package:flutter_app_ecommerce/view/screen/onboarding.dart';
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
      theme: controller.appTheme,
      home:
       //Test(),

      const Language(),
      routes: routes,
    );
  }
}

