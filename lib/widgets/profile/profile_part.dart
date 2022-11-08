import 'package:flutter/material.dart';

class ProfilePart extends StatelessWidget {
  const ProfilePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 112,
          height: 112,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.asset(
              'assets/images/profile/profile.jpeg',
              fit: BoxFit.cover,
              filterQuality: FilterQuality.low,
            ),
          ),
        ),
        const Text(
          'Andrew Ainsley',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          '+12 112 374 232',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
