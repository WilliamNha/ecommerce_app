import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titlePadding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
      titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w700,
          color: AppColor.primaryColor),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    Widget _buildImage(String assetName, [double width = 350]) {
      return SvgPicture.asset('assets/images/on_boarding/$assetName',
          width: width);
    }

    return IntroductionScreen(
      isBottomSafeArea: true,
      dotsDecorator: DotsDecorator(
          activeColor: AppColor.primaryColor,
          size: const Size.square(12.0),
          activeSize: const Size(20.0, 12.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
      globalBackgroundColor: Colors.white,
      onDone: () {
        context.go('/get_in');
      },
      globalFooter: Container(),
      onSkip: () {},
      showDoneButton: true,
      showNextButton: true,
      showBackButton: true,
      showSkipButton: false,
      back: const Text('Back',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryColor)),
      next: const Text("Next",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryColor)),
      skip: const Text("Skip"),
      done: const Text("Done",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryColor)),
      pages: [
        PageViewModel(
          title: "We provide high quality product just for you",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildImage('product.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Your satisfaction is our number one priority",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildImage('satifaction.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Let's fulfill your daily needs",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildImage('business_need.svg'),
          decoration: pageDecoration,
        ),
      ],
    );
  }
}
