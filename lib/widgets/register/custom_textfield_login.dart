import 'package:flutter/material.dart';

class CustomTextfieldLogin extends StatefulWidget {
  const CustomTextfieldLogin({
    this.isPasswordField = false,
    required this.prefixIconData,
    required this.hintText,
    Key? key,
  }) : super(key: key);
  final bool isPasswordField;
  final IconData prefixIconData;
  final String hintText;
  @override
  State<CustomTextfieldLogin> createState() => _CustomTextfieldLoginState();
}

class _CustomTextfieldLoginState extends State<CustomTextfieldLogin> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPasswordField && !isPasswordVisible,
      onChanged: (value) {},
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.prefixIconData,
          color: Colors.grey,
        ),
        suffixIcon: widget.isPasswordField
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                child: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              )
            : null,
        hintText: widget.hintText,
        filled: true,
        fillColor: const Color(0xffF2F2F2),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xffF2F2F2), width: 1),
        ),
      ),
    );
  }
}
