import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:ecommerce_app/widgets/register/custom_sign_in_button.dart';
import 'package:flutter/material.dart';

class CustomCartCard extends StatelessWidget {
  final CartItemModel cartItemModel;
  final bool hasDeleteButton;
  const CustomCartCard({
    required this.cartItemModel,
    this.hasDeleteButton = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: double.infinity,
      height: 137,
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
          width: 30,
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
                  hasDeleteButton
                      ? GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (contextx) {
                                  return Container(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    width: double.infinity,
                                    height: 335,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffF9FAFB),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          'Remove From Cart?',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        CustomCartCard(
                                            cartItemModel: cartItemModel),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(contextx);
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.white,
                                                      border: Border.all(
                                                          color: AppColor
                                                              .primaryColor,
                                                          width: 1)),
                                                  child: const Center(
                                                      child: Text(
                                                    'Cancel',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: AppColor
                                                            .primaryColor,
                                                        fontSize: 16),
                                                  )),
                                                ),
                                              ),
                                            )),
                                            Expanded(
                                                child: CustomSignInButton(
                                              onTap: () {},
                                              buttonTitle: "Yes, Remove",
                                            )),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: const Icon(Icons.delete_outline))
                      : const SizedBox(),
                ],
              ),
              const SizedBox(
                height: 15,
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
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '|',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Size ${cartItemModel.size}',
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
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
                    const Spacer(),
                    Container(
                      // width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '-',
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '+',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ]),
                    ),
                    const SizedBox(
                      width: 10,
                    )
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
