// ignore_for_file: unused_import

import 'package:divan_app/src/core/Models/hotels.dart';
import 'package:divan_app/src/interface/Screens/book_now_page.dart';

import 'package:flutter/material.dart';
import '../Widget/background_image.dart';
import '../Widget/custom_button.dart';
import '../Widget/custom_image_container.dart';
import '../Widget/image_slider.dart';
import '../Widget/row_svg_icon_box.dart';
import '../../core/constant/constant.dart';
import '../Themes/theme.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HotelsRoom hotelRoom;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              const BackgroundImage(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CustomImageContainer(
                      width: constraints.maxWidth * 0.7,
                      hight: constraints.maxHeight * 0.26, // Adjust as needed

                      img: const NetworkImage(divanHotel),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: CustomButton(
                      text: "Book Now",
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          BookNowPage.id,
                        );
                      },
                      buttonColor: secondaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Special Offers",
                      style: title1,
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.2, // Adjust as needed
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: CustCarouselSlider(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RowSvgIconBox(
                          img: "Assets/SVG/hotel-svgrepo-com.svg",
                          bio: "Hotels",
                        ),
                        RowSvgIconBox(
                          img: "Assets/SVG/meeting-svgrepo-com.svg",
                          bio: "Meeting & Events",
                        ),
                        RowSvgIconBox(
                          img: "Assets/SVG/hotel-svgrepo-com-3.svg",
                          bio: "Residences",
                        ),
                        RowSvgIconBox(
                          img: "Assets/SVG/food-svgrepo-com.svg",
                          bio: "Restaurants",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
