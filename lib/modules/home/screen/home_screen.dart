import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/home/custom_label_title.dart';
import 'package:ecommerce_app/widgets/home/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            width: 80,
            height: 30,
            color: Colors.black12,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.notifications_outlined,
              color: AppColor.primaryColor,
              size: 30,
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.favorite_outline_rounded,
              color: AppColor.primaryColor,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SearchBar(),
            CustomLabelTitle(
              leftTitle: 'Special Offers',
              rightTitle: 'See All',
            ),
          ],
        ),
      ),
    );
  }
}
