import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomSignInTitle extends StatelessWidget {
  const CustomSignInTitle({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor),
      ),
    );
  }
}
