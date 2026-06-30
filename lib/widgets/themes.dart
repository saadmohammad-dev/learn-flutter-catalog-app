import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
static ThemeData lighttheme(BuildContextcontext)=> ThemeData(
useMaterial3: false, // <- Must have this, or Flutter ignores the code above
  primarySwatch: Colors.deepPurple,
  fontFamily: GoogleFonts.poppins().fontFamily,

 appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
  ),

);


static ThemeData darktheme(BuildContextcontext)=> ThemeData(
brightness: Brightness.dark,
);


static Color creamColor=Color(0xfff5f5f5);
static Color darkBluishColor=Color(0xff403b58);


}