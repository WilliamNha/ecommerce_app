import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:flutter/material.dart';

class CustomCardProduct extends StatefulWidget {
  final ProductModel productModel;
  bool isFavoriteClicked;

  CustomCardProduct({
    this.isFavoriteClicked = false,
    Key? key,
    required this.productModel,
  }) : super(key: key);

  @override
  State<CustomCardProduct> createState() => _CustomCardProductState();
}

class _CustomCardProductState extends State<CustomCardProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.backgroundCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 0.1,
                        offset: Offset(0.1, 0.1))
                  ],
                  image: DecorationImage(
                      image: AssetImage(widget.productModel.image!),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                  right: 10,
                  top: 10,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.isFavoriteClicked = !widget.isFavoriteClicked;
                      });
                    },
                    child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff005555).withOpacity(0.4),
                        ),
                        child: widget.isFavoriteClicked
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red.shade400,
                              )
                            : const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              )),
                  )),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 5),
            child: Text(
              widget.productModel.title!,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            children: [
              const Icon(Icons.star_half_outlined, color: Colors.yellow),
              const SizedBox(width: 10),
              Text(
                widget.productModel.rating!,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Color(0xff828282),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 15),
              Container(
                width: 1,
                height: 20,
                color: const Color(0xff828282),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
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
                    text: widget.productModel.soldAmount!.toString(),
                    style: const TextStyle(color: Colors.grey, fontSize: 11),
                    children: const <TextSpan>[
                      TextSpan(text: ' Sold', style: TextStyle()),
                    ],
                  ),
                )),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '\$${widget.productModel.price.toString()}',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: AppColor.primaryColor,
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
