import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ipe_application/Provider/Localization_provider.dart';
import 'package:ipe_application/Provider/Theme_provider.dart';
import 'package:ipe_application/Provider/state_varaibles.dart';
import 'package:ipe_application/firebase_options.dart';
import 'package:ipe_application/function/depandency_injection.dart';
import 'package:ipe_application/views/Home_view.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => NavigationState()),
      ChangeNotifierProvider(create: (context) => LocaliztionProvider()),
    ],
    child: const MyApp(),
  ));
  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Locale(Provider.of<LocaliztionProvider>(context).locale),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Flutter Demo',
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: const HomeView(),
      ),
    );
  }
}
