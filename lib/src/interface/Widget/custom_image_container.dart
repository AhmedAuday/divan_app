import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    this.hight = 140.0,
    this.width = 120,
    required this.img,
    Key? key,
  }) : super(key: key);
  final ImageProvider<Object> img;
  final double? hight;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: Colors.white,
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 18,
            offset: Offset(0, 18),
            color: Color.fromARGB(83, 236, 70, 205),
          )
        ],
        image: DecorationImage(
          image: img,
          fit: BoxFit.fill,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
