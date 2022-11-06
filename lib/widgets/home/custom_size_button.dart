import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomSizeButton extends StatelessWidget {
  final bool isSelected;
  final GestureTapCallback onTab;
  final String title;
  const CustomSizeButton({
    required this.onTab,
    required this.title,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: onTab,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: isSelected ? AppColor.primaryColor : Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColor.primaryColor, width: 1),
          ),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : AppColor.primaryColor),
          )),
        ),
      ),
    );
  }
}
