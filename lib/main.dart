import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/dependencies.dart' show providers;
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
    return MultiProvider(
      providers: providers,
      builder:(context, child)=> MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
