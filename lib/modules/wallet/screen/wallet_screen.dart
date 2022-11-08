import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 28,
            ),
          )
        ],
        leadingWidth: 210,
        leading: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            child: SvgPicture.asset(
              'assets/images/splash/logo.svg',
              width: 21,
              height: 21,
            ),
          ),
          const Text(
            'E-Wallet',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          )
        ]),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CreditCardWidget(
              isSwipeGestureEnabled: true,
              isHolderNameVisible: true,
              animationDuration: const Duration(milliseconds: 1000),
              onCreditCardWidgetChange: (value) {},
              cardNumber: '5256677544562455',
              expiryDate: '12/22',
              cardHolderName: 'Alexander',
              cvvCode: '334',
              showBackView: false,
              isChipVisible: true,
              backgroundImage: 'assets/images/wallet/green_linear.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}
