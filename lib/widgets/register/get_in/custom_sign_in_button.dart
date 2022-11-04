import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  const CustomSignInButton({
    required this.onTap,
    required this.buttonTitle,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: AppColor.primaryColor),
              onPressed: onTap,
              child: Text(
                buttonTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ))),
    );
  }
}
