// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:divan_app/src/interface/Screens/room_details_page.dart';
import 'src/interface/Screens/book_now_page.dart';
import 'src/interface/Screens/home_page.dart';
import 'src/interface/Widget/navbar.dart';

void main() {
  runApp(const DivanApp());
}

class DivanApp extends StatefulWidget {
  const DivanApp({super.key});

  @override
  State<DivanApp> createState() => _DivanAppState();
}

class _DivanAppState extends State<DivanApp> {
  // ignore: unused_field
  Locale? _locale;
  //ThemeMode _themeMode = MyThemeData.themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Divan App',
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routes: {
        RoomDetails.id: (context) => const RoomDetails(),
        HomePage.id: (context) => const HomePage(),
        NavBarPage.id: (context) => const NavBarPage(),
        BookNowPage.id: (context) => const BookNowPage(),
      },
      home: const NavBarPage(),
    );
  }
}
