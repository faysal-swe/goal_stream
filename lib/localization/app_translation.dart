import 'package:flutter_templete/localization/app_english_key.dart';
import 'package:get/get.dart';

class AppTranslation extends Translations{
  @override
  
  Map<String, Map<String, String>> get keys => {
    'en_US': enUSLanguages,
  };
}