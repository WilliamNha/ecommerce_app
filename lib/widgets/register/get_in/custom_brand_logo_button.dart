import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBrandLogoButton extends StatelessWidget {
  const CustomBrandLogoButton({
    required this.imagePath,
    this.isSvgImage = false,
    Key? key,
  }) : super(key: key);
  final String imagePath;
  final bool isSvgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: isSvgImage
            ? SvgPicture.asset(imagePath)
            : Image.asset(
                imagePath,
              ),
      ),
    );
  }
}
