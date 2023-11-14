import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../core/constant/constant.dart';
import '../Themes/theme.dart';

class CustCarouselSlider extends StatelessWidget {
  @override
  const CustCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            CustomIMageSlider(
              image: "${kNetwork}divan-cozum-offer-660x660.jpg",
              paragraph: "A New Year New Rythem".toUpperCase(),
            ),
            //2nd Image of Slider
            CustomIMageSlider(
              image: "${kNetwork}offer-(7)-(1).jpg",
              paragraph: "Include In Privledges".toUpperCase(),
            ),
            //3rd Image of Slider
            CustomIMageSlider(
              image:
                  "${kNetworkOF}divan-bursada-aileler-mutlu-cocuklar-mutlu-desk.jpg",
              paragraph: "Happy Family Happy Kids".toUpperCase(),
            ),
            //4th Image of Slider
            CustomIMageSlider(
              image: "${kNetworkOF2}aperitivo-offer-gorsel.jpeg",
              paragraph: "Happy Hour".toUpperCase(),
            ),
            //5th Image of Slider
            CustomIMageSlider(
              image: "${kNetwork}offer_2__1.jpg",
              paragraph: "Great Serivece".toUpperCase(),
            )
          ],
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 900),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class CustomIMageSlider extends StatelessWidget {
  CustomIMageSlider({
    Key? key,
    required this.paragraph,
    required this.image,
  }) : super(key: key);

  String image;
  String paragraph;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              colorFilter: const ColorFilter.mode(
                  Color.fromARGB(223, 60, 60, 60), BlendMode.lighten),
              image: image != "noImage"
                  ? NetworkImage(
                      image,
                    )
                  : const AssetImage("Assets/Image/Hotel 1.jpg")
                      as ImageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 140),
          child: Text(
            paragraph,
            style: kImageSlider,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
