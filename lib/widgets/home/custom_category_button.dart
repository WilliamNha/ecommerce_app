import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CustomCategoryButton extends StatelessWidget {
  final String title;
  final String imagePath;
  const CustomCategoryButton(
      {super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 54,
          height: 54,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffF2F2F2),
          ),
          child: Center(
            child: SvgPicture.asset(
              imagePath,
              color: AppColor.primaryColor,
              width: 20,
              height: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(title,
            style: const TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 14)),
      ],
    );
  }
}
