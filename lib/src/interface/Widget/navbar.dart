import 'package:divan_app/src/interface/Widget/custom_willpop_scope.dart';
import '../Themes/theme.dart';
import 'package:flutter/material.dart';

import '../Screens/about_us_page.dart';
import '../Screens/home_page.dart';
import '../Screens/hotel_rooms_page.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key, this.initialPage}) : super(key: key);

  final String? initialPage;
  static String id = "navBar";

  @override
  // ignore: library_private_types_in_public_api
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'HomePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': const HomePage(),
      'HotelPage': const HotelPage(),
      'AboutUs': const AboutUs(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return SafeArea(
      child: CustomWillPopScope(
        title: Text(
          "Back to Login ?",
          style: title2,
        ),
        onPressed: () => Navigator.of(context).pop(true),
        onPressedNo: () => Navigator.of(context).pop(false),
        child: Scaffold(
          body: tabs[_currentPage],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
            backgroundColor: primaryColor,
            selectedItemColor: alternate,
            unselectedItemColor: const Color(0x8AF7F7F7),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 24,
                ),
                label: 'HomePage',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.hotel,
                  size: 30,
                ),
                label: 'Hotels',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 24,
                ),
                label: 'AboutUs',
              )
            ],
          ),
        ),
      ),
    );
  }
}
