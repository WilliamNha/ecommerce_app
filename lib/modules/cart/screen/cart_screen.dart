import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/cart/custom_cart_card.dart';
import 'package:ecommerce_app/widgets/register/custom_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../home/model/home_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
            'Cart',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          )
        ]),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: const Color(0xffF9FAFB),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    for (var item in cartItemList)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CustomCartCard(
                          hasDeleteButton: true,
                          cartItemModel: item,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                color: const Color(0xffF9FAFB),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Total Price',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff868686)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$1200.00',
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Expanded(
                        child: CustomSignInButton(
                          height: 50,
                          onTap: () {},
                          buttonTitle: 'Checkout',
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
