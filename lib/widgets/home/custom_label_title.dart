import 'package:flutter/material.dart';

class CustomLabelTitle extends StatelessWidget {
  const CustomLabelTitle({
    required this.leftTitle,
    required this.rightTitle,
    Key? key,
  }) : super(key: key);
  final String leftTitle;
  final String rightTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 22,
        ),
        Text(leftTitle,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const Spacer(),
        Text(rightTitle,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
