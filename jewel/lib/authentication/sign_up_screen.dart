import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewel/authentication/login_screen.dart';
import 'package:jewel/constants/color.dart';
import 'package:jewel/custom%20widgets/custom_elevated_button.dart';
import 'package:jewel/custom%20widgets/custom_text_field.dart';
import 'package:jewel/custom%20widgets/custom_text_field_label.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              25.verticalSpace,
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
              40.verticalSpace,
              Align(
                alignment: Alignment.topLeft,
                child: Text("Sign Up",
                    style: GoogleFonts.quicksand(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    )),
              ),
              10.verticalSpace,
              const CustomTextFieldLabel(
                labelText: "First Name",
                fontColor: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomStyledTextField(
                hintText: "Your First Name",
              ),
              15.verticalSpace,
              const CustomTextFieldLabel(
                labelText: "Last Name",
                fontColor: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomStyledTextField(
                hintText: "Your Last Name",
              ),
              15.verticalSpace,
              const CustomTextFieldLabel(
                labelText: "Email",
                fontColor: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomStyledTextField(
                hintText: "someone@example.com",
              ),
              15.verticalSpace,
              const CustomTextFieldLabel(
                labelText: "Mobile Number",
                fontColor: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomStyledTextField(
                hintText: "Your First Name",
              ),
              15.verticalSpace,
              const CustomTextFieldLabel(
                labelText: "Password",
                fontColor: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomStyledTextField(
                hintText: "anything@123",
              ),
              20.verticalSpace,
              SizedBox(
                height: 50.sp,
                width: 110.sp,
                child: CustomElevatedButtonWithIcon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
              ),
              40.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
