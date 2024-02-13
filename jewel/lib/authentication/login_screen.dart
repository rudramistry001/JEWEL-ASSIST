import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewel/constants/color.dart';
import 'package:jewel/custom%20widgets/custom_elevated_button.dart';
import 'package:jewel/custom%20widgets/custom_text_field.dart';
import 'package:jewel/custom%20widgets/custom_text_field_label.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              30.verticalSpace,
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 55.sp,
                      width: 55.sp,
                    ),
                    10.horizontalSpace,
                    Text(
                      "Jewel Assist",
                      style: GoogleFonts.dancingScript(
                        fontSize: 38.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              100.verticalSpace,
              Align(
                alignment: Alignment.topLeft,
                child: Text("Login",
                    style: GoogleFonts.quicksand(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    )),
              ),
              20.verticalSpace,
              const CustomTextFieldLabel(
                labelText: "Email",
                fontColor: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomStyledTextField(
                hintText: "someone@example.com",
              ),
              20.verticalSpace,
              const CustomTextFieldLabel(
                labelText: "Password",
                fontColor: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomStyledTextField(
                hintText: "anything@123",
              ),
              30.verticalSpace,
              SizedBox(
                height: 50.sp,
                width: 110.sp,
                child: CustomElevatedButtonWithIcon(
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
