import 'package:flutter/material.dart';
import 'package:netschool/Pages/register/RegisterWidget.dart';
import 'package:netschool/Pages/register/RegisterWidget2.dart';
import '../Pages/start/HomePage.dart';
import '../Pages/start/LoginPage.dart';
import '../Pages/app/mainPage.dart';
import '../theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: colorWhite,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: colorWhite,
            selectedItemColor: colorBase,
            unselectedItemColor: colorGreyText,
          )),
      debugShowCheckedModeBanner: false,
      routes: {
        '/hi': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterWidget(),
        '/register2': (context) => RegisterWidget2(),
        '/main': (context) => MainPage(),
      },
      initialRoute: '/hi',
    );
  }
}
