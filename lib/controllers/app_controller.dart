import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  //TODO: App Language Switcher
  //
  void changeAppLanguage(Locale requestLocale) {
    if (requestLocale.countryCode != '' && requestLocale.languageCode != '') {
      Get.updateLocale(requestLocale);
    }
  }
}
