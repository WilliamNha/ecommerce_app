import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/register/custom_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChoosePaymentScreen extends StatelessWidget {
  const ChoosePaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose Payment Method',
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
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'Select the payment method you want to use',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomPaymentCard(
            cardTitle: 'PayPal',
            imagePath: 'assets/images/wallet/paypal.png',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPaymentCard(
            cardTitle: 'Google Pay',
            imagePath: 'assets/images/register/get_in/google_logo.png',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPaymentCard(
            cardTitle: 'Apple Pay',
            imagePath: 'assets/images/wallet/apple.png',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPaymentCard(
            cardTitle: 'Mastercard',
            imagePath: 'assets/images/wallet/mastercard.png',
          ),
          const SizedBox(
            height: 40,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CustomSignInButton(onTap: () {}, buttonTitle: 'Continue'),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}

class CustomPaymentCard extends StatelessWidget {
  final String cardTitle;
  final String imagePath;
  const CustomPaymentCard({
    required this.cardTitle,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          width: 30,
          height: 30,
          // color: Colors.red,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          cardTitle,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const Spacer(),
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: AppColor.primaryColor)),
        )
      ]),
    );
  }
}
