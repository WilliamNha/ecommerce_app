import 'package:ecommerce_app/constants/app_color.dart';
import 'package:ecommerce_app/widgets/register/get_in/custom_brand_logo_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../widgets/register/get_in/custom_sign_in_button.dart';
import '../../../widgets/register/get_in/custom_sign_in_title.dart';
import '../../../widgets/register/get_in/custom_textfield_login.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isPasswordVisible = false;
  bool isBoxTab = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              const CustomSignInTitle(
                title: 'Login to your account',
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextfieldLogin(
                  hintText: 'Email',
                  prefixIconData: Icons.email,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextfieldLogin(
                  isPasswordField: true,
                  hintText: 'password',
                  prefixIconData: Icons.lock,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isBoxTab = !isBoxTab;
                      });
                    },
                    child: Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                        color: isBoxTab ? AppColor.primaryColor : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: AppColor.primaryColor, width: 2),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 15,
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Remember me',
                    style:
                        TextStyle(color: AppColor.primaryColor, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomSignInButton(
                  onTap: () {
                    context.go('/home');
                  },
                  buttonTitle: 'Sign in',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Forget the password?',
                  style: TextStyle(color: AppColor.primaryColor, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  'Or continue with',
                  style: TextStyle(color: Color(0xff5A5A5A), fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomBrandLogoButton(
                    isSvgImage: true,
                    imagePath:
                        'assets/images/register/get_in/facebook_logo.svg',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomBrandLogoButton(
                    imagePath: 'assets/images/register/get_in/google_logo.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomBrandLogoButton(
                    isSvgImage: true,
                    imagePath: 'assets/images/register/get_in/apple_logo.svg',
                  ),
                ],
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
                      context.push('/sign_up');
                    },
                    child: const Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 16, color: AppColor.primaryColor),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
