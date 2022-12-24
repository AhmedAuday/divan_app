import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcons extends StatelessWidget {
  const SvgIcons({
    super.key,
    required this.url,
    this.colors = const Color.fromARGB(255, 0, 0, 0),
    this.height = 20,
    this.width = 20,
  });

  final Color? colors;
  final String url;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      url,
      width: width,
      height: height,
      color: colors,
    );
  }
}
