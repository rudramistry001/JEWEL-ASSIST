import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:jewel/constants/assets_path.dart';
import 'package:jewel/constants/color.dart';
import 'package:jewel/constants/constants.dart';
import 'package:shimmer/shimmer.dart';

String getFormattedDate(String inputDate, String dateFormat) {
  DateTime parsedDate = DateTime.parse(inputDate);
  String outputDate = DateFormat(dateFormat).format(parsedDate);
  return outputDate;
}

SnackBar customSnackBar({required String message}) {
  return SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImagePath.appLogo,
          height: 20.sp,
        ),
        10.horizontalSpace,
        Expanded(
          child: Text(
            message,
            style: kBodyText,
          ),
        ),
      ],
    ),
    duration: const Duration(seconds: 4),
    backgroundColor: ConstantColor.white, // Background color
    elevation: 10, // Shadow elevation
    behavior: SnackBarBehavior.floating, // Floating behavior
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Rounded corners
    ),
  );
}

Widget shimmerContainer(double height, double? width, double? radius) {
  return Shimmer.fromColors(
    baseColor: ConstantColor.customBlack.shade100,
    highlightColor: Colors.white,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: ConstantColor.customBlack.shade100,
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 15),
        ),
      ),
    ),
  );
}
