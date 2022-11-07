import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/home/custom_cart_card.dart';
import 'package:ecommerce_app/widgets/register/custom_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../home/model/home_model.dart';

List cartItemList = [
  CartItemModel(
      title: 'Werolla Cadigans',
      color: Colors.grey,
      size: 'M',
      price: '180',
      image: 'assets/images/home/product/clothes/clothes2.jpeg'),
  CartItemModel(
      title: 'Suga Leather Shoes',
      color: Colors.black,
      size: 'S',
      price: '400',
      image: 'assets/images/home/product/shoes/shoes2.jpeg'),
  CartItemModel(
      title: 'Vinia Calora',
      color: Colors.orange,
      size: 'M',
      price: '340',
      image: 'assets/images/home/product/bags/bag2.jpeg'),
  CartItemModel(
      title: 'Werolla Cadigans',
      color: Colors.green,
      size: 'L',
      price: '250',
      image: 'assets/images/home/product/electronic/electronic2.jpeg'),
  CartItemModel(
      title: 'Suga Leather Vangora',
      color: Colors.yellow,
      size: 'L',
      price: '368',
      image: 'assets/images/home/product/shoes/shoes3.jpeg'),
];

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
        leadingWidth: 200,
        leading: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: SvgPicture.asset(
              'assets/images/splash/logo.svg',
              width: 22,
              height: 22,
            ),
          ),
          const Text(
            'My Cart',
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
                      CustomCartCard(
                        cartItemModel: item,
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
                    children: [
                      Column(
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
                            '\$1200',
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
