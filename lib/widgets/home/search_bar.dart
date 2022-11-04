import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.cardColor,
      ),
      child: Row(
        children: const [
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            color: AppColor.primaryColor,
          ),
          SizedBox(
            width: 15,
          ),
          Text('Search', style: TextStyle(color: Colors.black26, fontSize: 14)),
          Spacer(),
          Icon(
            Icons.filter_list_rounded,
            color: AppColor.primaryColor,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
