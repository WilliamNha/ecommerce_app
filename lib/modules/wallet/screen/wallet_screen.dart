import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/home/custom_label_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:go_router/go_router.dart';

bool isOrder = true;

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
        leadingWidth: 220,
        leading: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 10),
              child: Image.asset(
                'assets/icon/shop_ez_logo.png',
                width: 35,
                height: 35,
              )),
          const Text(
            'Wallet',
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.push('/top_up_screen');
                },
                child: CreditCardWidget(
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
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomLabelTitle(
                leftTitle: 'Transaction History',
                rightTitle: 'See All',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomWalletTransacitonCard(
                imagePath: 'assets/images/home/product/shoes/shoes2.jpeg',
                cardTitle: 'Suga Leather',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomWalletTransacitonCard(
                imagePath: '',
                isOrder: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomWalletTransacitonCard(
                imagePath: 'assets/images/home/product/clothes/clothes5.jpeg',
                cardTitle: 'Werolla Cardigans',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomWalletTransacitonCard(
                imagePath: 'assets/images/home/product/bags/bag2.jpeg',
                cardTitle: 'Mini Carolla Bag',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomWalletTransacitonCard(
                imagePath: '',
                isOrder: false,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomWalletTransacitonCard extends StatelessWidget {
  final String? imagePath;
  final bool isOrder;
  final String cardTitle;
  const CustomWalletTransacitonCard({
    this.imagePath,
    this.cardTitle = '',
    this.isOrder = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isOrder
              ? Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                  width: 55,
                  height: 55,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(
                      imagePath!,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: const BoxDecoration(
                      color: AppColor.primaryColor, shape: BoxShape.circle),
                  width: 55,
                  height: 55,
                  child: const Center(
                    child: Icon(
                      Icons.wallet_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  isOrder ? cardTitle : 'Top Up Wallet',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      'Dec 15, 2022',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      '|',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      '10:00 AM',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5, right: 20),
                child: Text(
                  '\$262.5',
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isOrder ? 'Orders' : "Top Up",
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                        color: isOrder ? Colors.red : Colors.blue,
                        borderRadius: BorderRadius.circular(3)),
                    child: Icon(
                      isOrder ? Icons.arrow_upward : Icons.arrow_downward,
                      size: 9,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
