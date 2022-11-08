import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoriteScreenn extends StatelessWidget {
  const FavoriteScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 25,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'My Favorite',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 86,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
