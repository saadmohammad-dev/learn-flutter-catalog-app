import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_with_codepur/pages/home_page.dart';
import 'package:learn_with_codepur/pages/login_page.dart';
import 'package:learn_with_codepur/utiles/routes.dart';
// import 'pages/home_page.dart';

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
      theme: ThemeData(
       primarySwatch: Colors.deepPurple,
       // fontFamily: GoogleFonts.lato().fontFamily,
       // primaryTextTheme: GoogleFonts.lacquerTextTheme(),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),

      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (contex) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }

  //  bringVegitables({required bool thala, int rupees=100}) {

  //  }
}
