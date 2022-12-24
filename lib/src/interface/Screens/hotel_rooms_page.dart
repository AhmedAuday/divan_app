import 'package:divan_app/src/core/Models/hotels.dart';
import 'package:divan_app/src/interface/Widget/background_image.dart';
import 'package:divan_app/src/interface/Widget/card.dart';
import '../Themes/theme.dart';
import 'package:flutter/material.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});
  static String id = "HotelPage";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            const BackgroundImage(),
            GridView.builder(
              clipBehavior: Clip.none,
              itemCount: hotelRooms.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 80,
              ),
              itemBuilder: ((context, index) {
                return CustomCard(hotelRoom: hotelRooms[index]);
              }),
            )
          ],
        ),
      ),
    );
  }
}
