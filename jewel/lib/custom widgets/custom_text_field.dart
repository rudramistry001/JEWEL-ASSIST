import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStyledTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomStyledTextField({
    Key? key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.sp,
      width: 360.sp,
      child: TextField(
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
