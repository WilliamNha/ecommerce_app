import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/register/custom_sign_in_button.dart';
import 'package:flutter/material.dart';

import '../../modules/home/model/home_model.dart';

class CustomOrderCard extends StatelessWidget {
  final CartItemModel cartItemModel;
  final String buttonText;
  final String progressText;
  const CustomOrderCard({
    required this.buttonText,
    required this.cartItemModel,
    required this.progressText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 105,
            height: 105,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              cartItemModel.image!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cartItemModel.title!,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: cartItemModel.color!, shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Color',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      '|',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  cartItemModel.size != null
                      ? Text(
                          'Size ${cartItemModel.size}',
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      : const SizedBox(),
                  cartItemModel.size != null
                      ? const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            '|',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        )
                      : const SizedBox(),
                  const Text(
                    'Qty = 1',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: 55,
                height: 20,
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  progressText,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      '\$${cartItemModel.price}',
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CustomSignInButton(
                            height: 45,
                            fontSize: 10,
                            isTextBold: true,
                            onTap: () {},
                            buttonTitle: buttonText),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
