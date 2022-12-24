import 'package:divan_app/src/core/Models/hotels.dart';
import 'package:divan_app/src/interface/Screens/book_now_page.dart';
import 'package:divan_app/src/interface/Widget/custom_button.dart';
import 'package:divan_app/src/interface/Widget/custom_svg_icon.dart';
import '../Themes/theme.dart';
import 'package:divan_app/src/core/constant/constant.dart';
import 'package:flutter/material.dart';

import '../Screens/room_details_page.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({
    required this.hotelRoom,
    Key? key,
  }) : super(key: key);

  HotelsRoom? hotelRoom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RoomDetails.id, arguments: hotelRoom);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 100),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color:
                        const Color.fromARGB(82, 237, 85, 138).withOpacity(0.2),
                    spreadRadius: 0,
                    offset: const Offset(10, 10),
                  )
                ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Card(
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 19, vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(hotelRoom!.roomType, style: title3),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgIcons(url: bedIcon),
                              Text(hotelRoom!.numBed),
                              SvgIcons(url: areaIcon),
                              Text(hotelRoom!.area),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgIcons(url: parkView),
                              Text(hotelRoom!.viewType),
                              SvgIcons(url: bedIcon),
                              Text(hotelRoom!.bedType),
                            ],
                          ),
                          CustomButton(
                            text: "Book Now",
                            onTap: () {
                              Navigator.pushNamed(context, BookNowPage.id,
                                  arguments: hotelRoom);
                            },
                            width: 150,
                            hight: 49,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 100,
            top: -10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image(height: 190, width: 200, image: hotelRoom!.imgUrl),
            ),
          ),
        ],
      ),
    );
  }
}
