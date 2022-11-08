import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  const CustomSignInButton({
    required this.onTap,
    required this.buttonTitle,
    this.fontSize = 16,
    this.isTextBold = true,
    this.height = 50,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  final String buttonTitle;
  final double fontSize;
  final bool isTextBold;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                backgroundColor: AppColor.primaryColor),
            onPressed: onTap,
            child: Center(
              child: Text(
                buttonTitle,
                style: TextStyle(
                    fontWeight:
                        isTextBold ? FontWeight.bold : FontWeight.normal,
                    fontSize: fontSize),
              ),
            )));
  }
}
