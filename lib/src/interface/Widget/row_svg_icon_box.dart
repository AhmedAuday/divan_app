import 'package:divan_app/src/interface/Widget/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import '../Themes/theme.dart';

class RowSvgIconBox extends StatelessWidget {
  const RowSvgIconBox({
    required this.img,
    required this.bio,
    Key? key,
  }) : super(key: key);
  final String img;
  final String bio;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(color: Color.fromARGB(170, 255, 255, 255)),
          child: Padding(
            padding: const EdgeInsets.all(19),
            child: SvgIcons(
              url: img,
              colors: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          bio,
          style: kParaghraph,
        ),
      ],
    );
  }
}
