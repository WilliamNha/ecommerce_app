import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewProductDetail extends StatefulWidget {
  const ViewProductDetail({super.key});

  @override
  State<ViewProductDetail> createState() => _ViewProductDetailState();
}

class _ViewProductDetailState extends State<ViewProductDetail> {
  var sizeList = ['S', 'M', 'L', "Xl"];
  var isSizeSelected = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
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
                    'assets/images/home/product/clothes/clothes1.jpeg',
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
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Venesa Long Shirt',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
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
                    text: const TextSpan(
                      text: '100',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                      children: <TextSpan>[
                        TextSpan(text: ' Sold', style: TextStyle()),
                      ],
                    ),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.star_half_outlined, color: Colors.yellow),
                const SizedBox(width: 10),
                const Text(
                  '4.5',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
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
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'lorem ipsum dolor sit amet , consectetur adipiscing elit, seddo eiusmod tempor incididunt ut laboree et dolore magna.',
                style: TextStyle(fontSize: 13, color: Color(0xff5A5A5A)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                'Size',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                'Color',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class CustomSizeButton extends StatelessWidget {
  final bool isSelected;
  final GestureTapCallback onTab;
  final String title;
  const CustomSizeButton({
    required this.onTab,
    required this.title,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: onTab,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: isSelected ? AppColor.primaryColor : Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColor.primaryColor, width: 1),
          ),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : AppColor.primaryColor),
          )),
        ),
      ),
    );
  }
}
