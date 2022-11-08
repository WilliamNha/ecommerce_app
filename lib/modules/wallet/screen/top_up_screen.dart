import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/register/custom_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List priceList = [
  '10',
  '20',
  '50',
  '100',
  '200',
  '250',
  '500',
  '750',
  '1000',
];

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  int currentIndex = 0;
  bool isTab = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up Wallet',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'Enter the amount of top up',
              style: TextStyle(color: Color(0xff5A5A5A), fontSize: 16),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: AppColor.primaryColor, width: 1)),
            child: Center(
                child: Text(
              '\$${priceList[currentIndex]}',
              style: const TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )),
          ),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 0,
                left: 0,
                right: 20,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 2.2),
              itemCount: priceList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      height: 10,
                      width: 100,
                      margin:
                          const EdgeInsets.only(top: 20, left: 20, bottom: 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: currentIndex == index
                              ? AppColor.primaryColor
                              : Colors.white,
                          border: Border.all(
                              color: AppColor.primaryColor, width: 1)),
                      child: Center(
                          child: Text(
                        '\$${priceList[index]}',
                        style: TextStyle(
                            color: currentIndex == index
                                ? Colors.white
                                : AppColor.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: CustomSignInButton(onTap: () {}, buttonTitle: 'Continue'),
          ),
        ])),
      ),
    );
  }
}
