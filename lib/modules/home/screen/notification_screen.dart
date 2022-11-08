import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomTimeTitle(
                title: 'Today',
              ),
              CustomNotificationCard(
                title: '30% Special Discount',
                detail: 'Special Promotion only valid today',
                iconData: Icons.percent,
              ),
              CustomTimeTitle(
                title: 'Yesterday',
              ),
              CustomNotificationCard(
                title: '20% Special Discount',
                detail: 'You will get a spcial discount',
                iconData: Icons.wallet_rounded,
              ),
              SizedBox(
                height: 20,
              ),
              CustomNotificationCard(
                title: '20% Special Discount',
                detail: 'Now you can track order in real time',
                iconData: Icons.location_on,
              ),
              CustomTimeTitle(
                title: 'December 18, 2021',
              ),
              CustomNotificationCard(
                title: '20% Special Discount',
                detail: 'Credit card has been linked!',
                iconData: Icons.wallet_giftcard,
              ),
              SizedBox(
                height: 20,
              ),
              CustomNotificationCard(
                title: '30% Special Discount',
                detail: 'Your account has been created',
                iconData: Icons.person,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNotificationCard extends StatelessWidget {
  final String title;
  final IconData iconData;
  final String detail;
  const CustomNotificationCard({
    required this.iconData,
    required this.title,
    required this.detail,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      height: 86,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: 54,
          height: 54,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.primaryColor,
          ),
          child: Center(
              child: Icon(
            iconData,
            size: 20,
            color: Colors.white,
          )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              detail,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            )
          ],
        ),
      ]),
    );
  }
}

class CustomTimeTitle extends StatelessWidget {
  final String title;
  const CustomTimeTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: Text(
        title,
        style: const TextStyle(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
    );
  }
}
