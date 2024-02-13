import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'color.dart';

RegExp emailValidateRegEp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
// Colors
const kBackgroundColor = ConstantColor.white;
const kTextFieldFill = ConstantColor.white;
// TextStyles

TextStyle kTitle = TextStyle(
  color: Colors.black,
  fontSize: 29.sp,
  fontWeight: FontWeight.w500,
);

TextStyle kTitle2 = TextStyle(
  color: Colors.black,
  fontSize: 21.sp,
  fontWeight: FontWeight.w500,
);
TextStyle kHeadline = TextStyle(
  color: Colors.black,
  fontSize: 25.sp,
  fontWeight: FontWeight.w600,
);

TextStyle kHeadline2 = TextStyle(
  color: ConstantColor.fontBlack,
  fontSize: 15.sp,
  fontWeight: FontWeight.w500,
);

TextStyle kBodyText = TextStyle(
  color: ConstantColor.fontBlack,
  fontSize: 13.sp,
);
TextStyle kBodyText2 = TextStyle(
  color: ConstantColor.fontBlack,
  fontSize: 11.sp,
);

TextStyle kButtonText = TextStyle(
  color: ConstantColor.white,
  fontSize: 18.sp,
  fontWeight: FontWeight.w500,
);
EdgeInsetsGeometry getPadding(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth >= 600) {
    return EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15, vertical: 20);
  } else {
    return const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
  }
}

double getWidth(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.width * percentage;
}

double getHeight(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.height * percentage;
}

final MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
    mask: '(###) ###-####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year - 1, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year + 5, kToday.month, kToday.day);

String getGreeting() {
  final hour = DateTime.now().hour;

  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 18) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}

String dateFormate(date) {
  return DateFormat("MM/dd/yyyy").format(date).toString();
}

String dateFormateMDY(date) {
  return DateFormat("MM-dd-yyyy").format(date).toString();
}

Future<void> onLaunchURL(String urlPro) async {
  var url = Uri.parse(urlPro);
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw '${'Could not launch'} $url';
  }
}
