import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    required this.imagePath,
    required this.title,
    this.isSvgAsset = true,
    Key? key,
  }) : super(key: key);
  final String title;
  final String imagePath;
  final bool isSvgAsset;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff868686)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 17 / 100, 18, 0, 18),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isSvgAsset
                ? SvgPicture.asset(imagePath)
                : Image.asset(
                    imagePath,
                    width: 25,
                  ),
            const SizedBox(
              width: 25,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
