import 'package:ez_expense/constants/colors.dart';
import 'package:ez_expense/constants/text_styles.dart';
import 'package:ez_expense/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ez Expense",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: KColors.seedColor),
        scaffoldBackgroundColor: KColors.scaffoldLight,
        textTheme: Typography.material2021().white.apply(
          fontFamily: KTextStyles.fontFamily,
          bodyColor: KColors.whiteText,
          displayColor: KColors.whiteText,
        ),
        iconTheme: IconThemeData(color: KColors.whiteText),
        primaryIconTheme: IconThemeData(color: KColors.whiteText),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: KColors.greenPrimary1,
          foregroundColor: KColors.whiteText,
          titleTextStyle: KTextStyles.medium28,
          centerTitle: true,
        ),
      ),
      home: HomePage(),
    );
  }
}
