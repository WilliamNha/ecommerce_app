import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:ecommerce_app/widgets/home/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoriteScreenn extends StatelessWidget {
  const FavoriteScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
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
        title: const Text(
          'My Favorite',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
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
                  itemCount: favoriteProductModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        context.push('/view_product_detail',
                            extra: favoriteProductModelList[index]);
                      },
                      child: CustomCardProduct(
                        isFavoriteClicked: true,
                        productModel: favoriteProductModelList[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
