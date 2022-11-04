import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:ecommerce_app/widgets/home/custom_category_button.dart';
import 'package:ecommerce_app/widgets/home/custom_label_title.dart';
import 'package:ecommerce_app/widgets/home/offer_slider.dart';
import 'package:ecommerce_app/widgets/home/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

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
          children: [
            const SizedBox(
              height: 10,
            ),
            const SearchBar(),
            const CustomLabelTitle(
              leftTitle: 'Special Offers',
              rightTitle: 'See All',
            ),
            const OfferSlider(),
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 30),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: categoryIconList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomCategoryButton(
                    imagePath: categoryIconList[index],
                    title: 'Shirt',
                  );
                }),
            const SizedBox(
              height: 10,
            ),
            const CustomLabelTitle(
              leftTitle: 'Most Popular',
              rightTitle: 'See All',
            ),
          ],
        ),
      ),
    );
  }
}
