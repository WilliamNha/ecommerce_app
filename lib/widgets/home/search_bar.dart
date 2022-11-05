import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        onChanged: (value) {},
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: AppColor.primaryColor,
          ),
          suffixIcon: const Icon(
            Icons.filter_list_rounded,
            color: AppColor.primaryColor,
          ),
          hintText: 'Search',
          filled: true,
          fillColor: AppColor.cardColor,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              // color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffF2F2F2), width: 1),
          ),
        ),
      ),
    );

    // Container(
    //   margin: const EdgeInsets.all(20),
    //   width: double.infinity,
    //   height: 50,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(15),
    //     color: AppColor.cardColor,
    //   ),
    //   child: Row(
    //     children: const [
    //       SizedBox(
    //         width: 20,
    //       ),
    //       Icon(
    //         Icons.search,
    //         color: AppColor.primaryColor,
    //       ),
    //       SizedBox(
    //         width: 15,
    //       ),
    //       Text('Search', style: TextStyle(color: Colors.black26, fontSize: 14)),
    //       Spacer(),
    //       Icon(
    //         Icons.filter_list_rounded,
    //         color: AppColor.primaryColor,
    //       ),
    //       SizedBox(
    //         width: 15,
    //       ),
    //     ],
    //   ),
    // );
  }
}
