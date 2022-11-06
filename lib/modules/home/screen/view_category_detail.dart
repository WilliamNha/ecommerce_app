import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:ecommerce_app/widgets/home/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewCategoryDetailScreen extends StatelessWidget {
  final int? indexx;
  final String? title;
  const ViewCategoryDetailScreen({super.key, this.indexx, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 25,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          title!,
          style: const TextStyle(color: Colors.black),
        ),
        elevation: 1,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 20, right: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 270,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15),
              itemCount: productModelTypeList[indexx!.toInt() + 1].length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    context.push('/view_product_detail',
                        extra: productModelTypeList[indexx!.toInt() + 1]
                            [index]);
                  },
                  child: CustomCardProduct(
                    productModel: productModelTypeList[indexx!.toInt() + 1]
                        [index],
                  ),
                );
              },
            ),
          ),
        ])),
      ),
    );
  }
}
