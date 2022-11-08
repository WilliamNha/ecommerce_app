import 'package:flutter/material.dart';

class CustomProfileRowButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  const CustomProfileRowButton({
    required this.iconData,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 23,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 17),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right_outlined,
            size: 23,
          ),
        ],
      ),
    );
  }
}
