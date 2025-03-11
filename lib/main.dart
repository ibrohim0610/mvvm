import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/dependencies.dart' show providers;
import 'package:recipe_app/core/l10n/localization.dart';
import 'core/l10n/app_localizations.dart';
import 'core/routing/router.dart';
final navigatorKey = GlobalKey<NavigatorState>();


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(430, 932));
    return MultiProvider(
      providers: providers,
      builder:(context, child)=> MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // theme: appTheme,
        routerConfig: router,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          MyLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("uz"),
          Locale("en"),
        ],
        locale: context.watch<LocalizationViewModel>().currentLocale,
      ),
    );
  }
}
