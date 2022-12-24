import 'package:divan_app/src/core/Models/hotels.dart';

import 'package:divan_app/src/interface/Widget/custom_svg_icon.dart';
import '../Themes/theme.dart';
import 'package:flutter/material.dart';

import '../Widget/custom_image_container.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});
  static String id = "RoomDetails";
  @override
  Widget build(BuildContext context) {
    HotelsRoom hotelsRoom =
        ModalRoute.of(context)!.settings.arguments as HotelsRoom;
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 50),
                  child: CustomImageContainer(
                    width: 300,
                    hight: 200,
                    img: hotelsRoom.imgUrl,
                  ),
                ),
                Text(
                  hotelsRoom.roomType,
                  style: title1,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: SvgIcons(
                              colors: secondaryIcon,
                              url: 'Assets/SVG/hotel-svgrepo-com-3.svg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            hotelsRoom.viewType,
                            style: subtitle1,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: SvgIcons(
                              colors: secondaryIcon,
                              url: 'Assets/SVG/cinema-area-svgrepo-com.svg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              hotelsRoom.area,
                              style: subtitle1,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: SvgIcons(
                                colors: secondaryIcon,
                                url: 'Assets/SVG/bed-svgrepo-com.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              hotelsRoom.bedType,
                              style: subtitle1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "features".toUpperCase(),
                    style: title1,
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: HotelsRoom.featuears.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: ((context, index) {
                      String name = HotelsRoom.featuears.keys.elementAt(index);
                      Widget? svgIcon = HotelsRoom.featuears[name];
                      return Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 40,
                                    color:
                                        const Color.fromARGB(82, 237, 85, 138)
                                            .withOpacity(0.2),
                                    spreadRadius: 0,
                                    offset: const Offset(10, 10),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Card(
                                  elevation: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 10),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            width: 40,
                                            height: 37,
                                            child: svgIcon),
                                        SizedBox(
                                          width: 50,
                                          height: 30,
                                          child: Text(
                                            name,
                                            style: subtitle2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 100,
                            top: -80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
