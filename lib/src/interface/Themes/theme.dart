import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kParaghraph = TextStyle(
  color: Color.fromARGB(255, 255, 255, 255),
  fontSize: 14,
  height: 1.5,
  fontWeight: FontWeight.w500,
  wordSpacing: 2,
);

const kHeadline = TextStyle(
    color: Color.fromARGB(255, 255, 255, 255),
    fontSize: 25,
    height: 1.5,
    fontWeight: FontWeight.bold); // TextStyle

const kButton = TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 25,
    height: 1.5,
    fontWeight: FontWeight.bold);

const kImageSlider = TextStyle(
  color: Color.fromARGB(255, 255, 255, 255),
  fontSize: 25,
  fontWeight: FontWeight.w500,
  shadows: [
    Shadow(
      offset: Offset(20.0, 10.0),
      blurRadius: 40.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
  ],
); // Textstyle

const kText = TextStyle(
  color: Color.fromARGB(255, 255, 255, 255),
  fontSize: 17,
  fontWeight: FontWeight.w300,
);
Color warning = const Color.fromARGB(255, 208, 4, 4);
Color loginPage = const Color.fromARGB(255, 77, 77, 77);
Color primaryColor = const Color.fromARGB(255, 32, 32, 32);
Color secondaryColor = const Color.fromARGB(255, 255, 255, 255);
Color tertiaryColor = const Color(0xFFFF5963);
Color alternate = const Color(0xFFFF5963);
Color primaryText = const Color.fromARGB(255, 0, 0, 0);
Color secondaryText = const Color.fromARGB(255, 255, 255, 255);
Color primaryIcon = const Color.fromARGB(255, 0, 0, 0);
Color secondaryIcon = const Color.fromARGB(255, 255, 255, 255);
Color unselectedItemColor = const Color(0x8AF7F7F7);

TextStyle get title1 => GoogleFonts.getFont(
      'Poppins',
      color: secondaryText,
      fontWeight: FontWeight.w600,
      fontSize: 35,
    );
TextStyle get title2 => GoogleFonts.getFont(
      'Poppins',
      color: secondaryText,
      fontWeight: FontWeight.w600,
      fontSize: 22,
    );
TextStyle get title3 => GoogleFonts.getFont(
      'Lexend Deca',
      color: primaryText,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
TextStyle get subtitle1 => GoogleFonts.getFont(
      'Poppins',
      color: secondaryText,
      fontWeight: FontWeight.w400,
      fontSize: 15,
    );
TextStyle get subtitle2 => GoogleFonts.getFont(
      'Poppins',
      color: primaryColor,
      fontWeight: FontWeight.w300,
      fontSize: 12,
    );
TextStyle get bodyText1 => GoogleFonts.getFont(
      'Poppins',
      color: primaryText,
      fontWeight: FontWeight.w600,
      fontSize: 24,
    );

TextStyle get appBarText => GoogleFonts.getFont(
      'Poppins',
      color: tertiaryColor,
      fontWeight: FontWeight.w600,
      fontSize: 20,
    );

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
