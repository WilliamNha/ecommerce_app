import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/register/get_in/custom_sign_in_button.dart';
import 'package:ecommerce_app/widgets/register/get_in/custom_social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class GetYouInScreen extends StatefulWidget {
  const GetYouInScreen({Key? key}) : super(key: key);

  @override
  State<GetYouInScreen> createState() => _GetYouInScreenState();
}

class _GetYouInScreenState extends State<GetYouInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              SvgPicture.asset('assets/images/register/get_in/shop_logo.svg'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Let's get you in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomSocialButton(
                imagePath: 'assets/images/register/get_in/facebook_logo.svg',
                title: 'Continue with Facebook',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomSocialButton(
                imagePath: 'assets/images/register/get_in/google_logo.png',
                title: 'Continue with Google',
                isSvgAsset: false,
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  // context.push('/dash_bord');
                },
                child: const CustomSocialButton(
                  imagePath: 'assets/images/register/get_in/apple_logo.svg',
                  title: 'Continue with Apple',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: const Color(0xffF2F2F2),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or',
                        style: TextStyle(color: Color(0xff868686)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: const Color(0xffF2F2F2),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomSignInButton(
                buttonTitle: 'Sign in with password',
                onTap: () {
                  context.push('/sign_in');
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account ?',
                    style: TextStyle(fontSize: 16, color: Color(0xff868686)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push('sign_up');
                    },
                    child: const Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 16, color: AppColor.primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
