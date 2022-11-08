import 'package:ecommerce_app/widgets/profile/custom_row_profile_button.dart';
import 'package:ecommerce_app/widgets/profile/profile_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 210,
        leading: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            child: SvgPicture.asset(
              'assets/images/splash/logo.svg',
              width: 21,
              height: 21,
            ),
          ),
          const Text(
            'Profile',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          )
        ]),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            //profile
            const ProfilePart(),
            const SizedBox(
              height: 5,
            ),
            const CustomProfileRowButton(
              title: 'Edit Profile',
              iconData: Icons.person_outline_outlined,
            ),
            const CustomProfileRowButton(
              title: 'Address',
              iconData: Icons.location_on_outlined,
            ),
            const CustomProfileRowButton(
              title: 'Notification',
              iconData: Icons.notifications_outlined,
            ),
            const CustomProfileRowButton(
              title: 'Payment',
              iconData: Icons.account_balance_wallet_outlined,
            ),
            const CustomProfileRowButton(
              title: 'Security',
              iconData: Icons.security_outlined,
            ),
            const CustomProfileRowButton(
              title: 'Language',
              iconData: Icons.language_outlined,
            ),
            const CustomProfileRowButton(
              title: 'Dark Mode',
              iconData: Icons.visibility_outlined,
            ),
            const CustomProfileRowButton(
              title: 'Privacy Policy',
              iconData: Icons.lock_outline,
            ),
            const CustomProfileRowButton(
              title: 'Help Center',
              iconData: Icons.account_balance_wallet_outlined,
            ),
            const CustomProfileRowButton(
              title: 'Invite Friend',
              iconData: Icons.group_outlined,
            ),

            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Icon(
                    Icons.exit_to_app,
                    size: 23,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
