import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const SUPPORTED_LANGUAGES = ['de', 'en'];

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of(context, AppLocalizations);
  }

  Map<String, String> _localizedStrings;

  Future<bool> load() async {
    var jsonString = await rootBundle.loadString(
        'lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(String key) {
    return _localizedStrings[key];
  }

  static const LocalizationsDelegate<
      AppLocalizations> delegate = _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return SUPPORTED_LANGUAGES.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    var localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}