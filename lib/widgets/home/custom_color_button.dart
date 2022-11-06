import 'package:flutter/material.dart';

class CustomColorButton extends StatelessWidget {
  const CustomColorButton({
    required this.onTab,
    required this.color,
    this.isTab = false,
    Key? key,
  }) : super(key: key);
  final Color color;
  final GestureTapCallback onTab;
  final bool isTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: isTab
            ? const Center(
                child: Icon(
                Icons.done,
                color: Colors.white,
              ))
            : const SizedBox(),
      ),
    );
  }
}
