import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:ecommerce_app/widgets/home/custom_category_button.dart';
import 'package:ecommerce_app/widgets/home/custom_chip.dart';
import 'package:ecommerce_app/widgets/home/custom_label_title.dart';
import 'package:ecommerce_app/widgets/home/custom_product_card.dart';
import 'package:ecommerce_app/widgets/home/offer_slider.dart';
import 'package:ecommerce_app/widgets/home/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  int currentIndex = 0;
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
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
                // category list
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 30),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: categoryIconList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed('ViewCategoryDetail', params: {
                            "indexx": index.toString(),
                            'title': categoryTitleList[index],
                          });
                        },
                        child: CustomCategoryButton(
                          imagePath: categoryIconList[index],
                          title: categoryTitleList[index],
                        ),
                      );
                    }),
                const SizedBox(
                  height: 10,
                ),
                const CustomLabelTitle(
                  leftTitle: 'Most Popular',
                  rightTitle: 'See All',
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: chipList.asMap().entries.map((e) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = e.key;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 0, top: 15),
                          child: CustomChip(
                            isSelected: currentIndex == e.key,
                            title: e.value,
                            color: AppColor.primaryColor,
                          ),
                        ));
                  }).toList()),
                ),
                //display product list
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 270,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15),
                    itemCount: productModelTypeList[currentIndex].length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          context.push('/view_product_detail',
                              extra: productModelTypeList[currentIndex][index]);
                        },
                        child: CustomCardProduct(
                          productModel: productModelTypeList[currentIndex]
                              [index],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
