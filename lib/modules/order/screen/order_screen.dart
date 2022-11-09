import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/modules/home/model/home_model.dart';
import 'package:ecommerce_app/widgets/order/custom_order_card.dart';
import 'package:flutter/material.dart';

TabBar get _tabBar => const TabBar(
        indicatorWeight: 3,
        labelColor: AppColor.primaryColor,
        unselectedLabelColor: Colors.grey,
        padding: EdgeInsets.only(left: 20, right: 20),
        indicatorColor: AppColor.primaryColor,
        tabs: [
          Tab(
            child: Center(
              child: Text(
                'Ongoing',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Tab(
            child: Center(
              child: Text(
                'Completed',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ]);

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: const Color(0xffF9FAFB),
              child: _tabBar,
            ),
          ),
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
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 15, right: 10),
                child: Image.asset(
                  'assets/icon/shop_ez_logo.png',
                  width: 35,
                  height: 35,
                )),
            const Text(
              'Orders',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            )
          ]),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: TabBarView(children: [
          _tabOneBody(),
          _tabTwoBody(),
        ]),
      ),
    );
  }
}

_tabOneBody() {
  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        for (var item in orderItemList)
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomOrderCard(
              progressText: 'In Delivery',
              buttonText: 'Track Order',
              cartItemModel: item,
            ),
          ),
      ]),
    ),
  );
}

_tabTwoBody() {
  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        for (var item in orderItemListCompleted)
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomOrderCard(
              progressText: 'Completed',
              buttonText: 'Review',
              cartItemModel: item,
            ),
          ),
      ]),
    ),
  );
}
