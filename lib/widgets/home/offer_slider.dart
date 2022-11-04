import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OfferSlider extends StatefulWidget {
  const OfferSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<OfferSlider> createState() => _OfferSliderState();
}

class _OfferSliderState extends State<OfferSlider> {
  late final controller;
  int currentIndex = 0;
  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CarouselSlider.builder(
        carouselController: controller,
        itemCount: imageSliderList.length,
        options: CarouselOptions(
          height: 180,
          viewportFraction: 1,
          enlargeCenterPage: false,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          onPageChanged: (index, value) {
            setState(() {
              currentIndex = index;
            });
          },
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) =>
            Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageSliderList[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Positioned(
        right: 0,
        left: 0,
        bottom: 11,
        child: Center(
          child: AnimatedSmoothIndicator(
            count: imageSliderList.length,
            onDotClicked: (index) {
              controller.animateToPage(index);
            },
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.yellow,
              dotColor: Colors.white,
              dotHeight: 10,
              dotWidth: 10,
              expansionFactor: 2,
              radius: 5,
              spacing: 6.0,
            ),
            activeIndex: currentIndex,
          ),
        ),
      ),
    ]);
  }
}
