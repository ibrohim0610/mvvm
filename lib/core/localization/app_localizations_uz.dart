// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class MyLocalizationsUz extends MyLocalizations {
  MyLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get hello => 'Salom';

  @override
  String trendingRecipe(String nimadur) {
    return 'Trenddagi Ritsept $nimadur';
  }
}
