import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStyledTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? Function(String?)? validator;

  const CustomStyledTextField({
    Key? key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.keyboardType,
    this.obscureText,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.sp,
      width: 360.sp,
      child: TextFormField(
        validator: validator ??
            (value) {
              if (value != null && value.isNotEmpty) {
                if (isValidEmail(value)) {
                  return null;
                } else {
                  return 'Please enter a valid email address';
                }
              } else {
                return 'Required Field';
              }
            },
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false, // Use obscureText property here
        decoration: InputDecoration(
          fillColor: Colors.grey, // Light blue fill color
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // Add circular border
            borderSide:
                const BorderSide(color: Colors.grey), // Light blue border color
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0), // Add circular border
            borderSide: const BorderSide(
                color: Colors.grey), // Light blue border color when focused
          ),
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey.shade400, // Blue label text color
            fontWeight: FontWeight.w200,
            fontSize: 16.sp, // Font weight 500 for label text
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400, // Blue hint text color
            fontWeight: FontWeight.w200,
            fontSize: 16.sp, // Font weight 500 for hint text
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

bool isValidEmail(String email) {
  // Regular expression for validating an email address
  // This regex checks for the presence of "@" and "."
  // It doesn't check for the exact format of the email address
  // For example, it won't catch "name@example"
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}
