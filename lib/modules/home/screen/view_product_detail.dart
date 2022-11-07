import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:ecommerce_app/widgets/home/custom_color_button.dart';
import 'package:ecommerce_app/widgets/home/custom_size_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewProductDetail extends StatefulWidget {
  const ViewProductDetail({
    super.key,
    this.productModel,
  });
  final ProductModel? productModel;
  @override
  State<ViewProductDetail> createState() => _ViewProductDetailState();
}

class _ViewProductDetailState extends State<ViewProductDetail> {
  var sizeList = ['S', 'M', 'L', "Xl"];
  var colorList = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.grey,
    Colors.blue,
    Colors.black
  ];
  var isSizeSelected = false;
  int colorSelectedIndex = 0;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 375,
                            color: Colors.red,
                            child: Image.asset(
                              widget.productModel!.image!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 20,
                            child: GestureDetector(
                              onTap: () {
                                context.pop();
                              },
                              child: const Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              widget.productModel!.title!,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.favorite_outline_rounded,
                              color: AppColor.primaryColor,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //sold and rating row
                      Row(
                        children: [
                          Container(
                            width: 70,
                            margin: const EdgeInsets.only(left: 20),
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                child: RichText(
                              text: TextSpan(
                                text:
                                    widget.productModel!.soldAmount!.toString(),
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 11),
                                children: const <TextSpan>[
                                  TextSpan(text: ' Sold', style: TextStyle()),
                                ],
                              ),
                            )),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(Icons.star_half_outlined,
                              color: Colors.yellow),
                          const SizedBox(width: 10),
                          Text(
                            widget.productModel!.rating!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Color(0xff828282),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // ======   description part
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 15),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'lorem ipsum dolor sit amet , consectetur adipiscing elit, seddo eiusmod tempor incididunt ut laboree et dolore magna.',
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff5A5A5A)),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 15),
                        child: Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < sizeList.length; i++)
                            CustomSizeButton(
                              isSelected: selectedIndex == i,
                              title: sizeList[i],
                              onTab: () {
                                setState(() {
                                  selectedIndex = i;
                                });
                              },
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //======  color part
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 15),
                        child: Text(
                          'Color',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < colorList.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: CustomColorButton(
                                isTab: colorSelectedIndex == i,
                                onTab: () {
                                  setState(() {
                                    colorSelectedIndex = i;
                                  });
                                },
                                color: colorList[i],
                              ),
                            ),
                        ],
                      ),
                      //======  color part
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              'Quantity',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xffF2F2F2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            //======  Total Price
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Total Price',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff868686)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('\$${widget.productModel!.price}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppColor.primaryColor)),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 180,
                  height: 45,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
