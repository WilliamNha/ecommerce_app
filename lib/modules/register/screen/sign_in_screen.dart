import 'package:ecommerce_app/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../widgets/register/get_in/custom_sign_in_button.dart';
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
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Sign Up Your Account',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor),
                ),
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
                  hintText: 'New Password',
                  prefixIconData: Icons.lock,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextfieldLogin(
                  isPasswordField: true,
                  hintText: 'Confirm Password',
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
                  onTap: () {},
                  buttonTitle: 'Sign Up',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
