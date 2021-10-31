import 'package:demo/app/ui/theme/app_colors.dart';
import 'package:demo/app/ui/theme/styles.dart';
import 'package:demo/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light().copyWith(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          primaryVariant: AppColors.primaryVariant,
          secondaryVariant: AppColors.secondaryVariant,
        ),
        appBarTheme: AppBarTheme(
          color: AppColors.appBarColor,
          titleTextStyle: kBaseTextStyle,
        ),
      ),
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
