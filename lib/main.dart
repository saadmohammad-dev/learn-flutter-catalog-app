import 'package:flutter/material.dart';
import 'package:learn_with_codepur/pages/home_page.dart';
import 'package:learn_with_codepur/pages/login_page.dart';
import 'package:learn_with_codepur/utiles/routes.dart';
import 'package:learn_with_codepur/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //bringVegitables(rupees: 50, thala: false);

    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
  theme: MyTheme.lighttheme(context),

      darkTheme:  MyTheme.darktheme(context),

      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (contex) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }



}
