import 'package:flutter/material.dart';
import '../Themes/theme.dart';
import '../Widget/custom_image_container.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  static String id = "AboutUs";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Our Vision",
                style: title1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "Strengthen our leadership position nationally, and grow to be among the most reputable brands in the hospitality, gourmet products and culinary sectors not only in Turkey but also globally.",
                style: subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                CustomImageContainer(
                  img: NetworkImage(
                    "https://divancdn.azureedge.net/divan/media/divan/divangroup/aboutus/d-06898-copy-7.jpg?ext=.jpg",
                  ),
                ),
                CustomImageContainer(
                  width: 170,
                  hight: 300,
                  img: NetworkImage(
                    "https://divancdn.azureedge.net/divan/media/divan/divangroup/aboutus/d-06898-copy-7.jpg?ext=.jpg",
                  ),
                ),
                CustomImageContainer(
                  width: 120,
                  img: NetworkImage(
                    "https://divancdn.azureedge.net/divan/media/divan/divangroup/aboutus/d-06898-copy-7.jpg?ext=.jpg",
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Divan Values",
                style: title1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "We are a large family that works with a passion for perfect service! We turn majestic dreams into reality with team spirit. We overcome obstacles that seem insurmountable with the power of unity and solidarity.",
                style: subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "We believe that learning is infinite! Every day we pursue new knowledge and experiences. We are excited to share what we know with our teammates and develop together.",
                style: subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "We consider feedback as a gift! We seek feedback from people we work with to improve ourselves. We give constructive advice to each other at every opportunity and while doing this, we attach importance to mutual respect.",
                style: subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "We appreciate the one who makes effort and adds value! We will be happy to hear and be proud of the achievements of our team-mates. We share good examples on every platform so that they become widespread and increase in number.",
                style: subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "We are always and in every aspect reliable! We always do our job properly and on time. We take the utmost care to protect the information shared with us, to comply with ethical rules, laws and procedures.",
                style: subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "We conform to the digital world and the information age! We are creative and innovative! We lead change, and we work agile and fast. We define and continuously improve our processes. We use the data in our business and decisions, and transform our knowledge into corporate memory.",
                style: subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "We are the representatives of a long-established world brand! We know that our guests and the society recognize Divan with us and our behaviors. We proudly carry this pleasant responsibility on our shoulders.",
                style: subtitle1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Location",
                style: title1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "Divan Erbil is located on the fashionable and quiet Gulan Street, and encompasses 43,000 square meters and it is only 10 minutes by car from both the airport and the city center.",
                style: subtitle1,
              ),
            ),
            const CustomImageContainer(
              width: 300,
              hight: 200,
              img: AssetImage("Assets/Image/map.png"),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Contact",
                style: title1,
              ),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.pin_drop,
                      color: secondaryIcon,
                    ),
                    Text(
                      "Gulan Caddesi, Erbil, Irak",
                      style: subtitle1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.mail,
                      color: secondaryIcon,
                    ),
                    Text(
                      "info.divanerbil@divan.com.tr",
                      style: subtitle1,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.phone,
                      color: secondaryIcon,
                    ),
                    Text(
                      "+964 662 10 50 00",
                      style: subtitle1,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
