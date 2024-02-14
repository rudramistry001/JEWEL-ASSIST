import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewel/authentication/login_screen.dart';
import 'package:jewel/constants/constants.dart';
import 'package:jewel/custom%20widgets/custom_elevated_button.dart';
import 'package:jewel/custom%20widgets/custom_text_field.dart';
import 'package:jewel/custom%20widgets/custom_text_field_label.dart';
import 'package:jewel/model/register_model.dart';
import 'package:jewel/view%20model/register_view_model.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  late final RegisterModel register;
  @override
  void initState() {
    super.initState();
    register = RegisterModel(); // Initialize register variable here
  }

  RegisterViewModel registerViewModel = RegisterViewModel();

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobilenumberController = TextEditingController();
  TextEditingController accountController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController roleController = TextEditingController();

  bool isSignIn = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                CustomStyledTextField(
                  controller: firstnameController,
                  hintText: "Your First Name",
                  validator: (val) =>
                      val != null && val.isNotEmpty ? null : 'Required Field',
                ),
                15.verticalSpace,
                const CustomTextFieldLabel(
                  labelText: "Last Name",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
                CustomStyledTextField(
                  hintText: "Your Last Name",
                  controller: lastnameController,
                  validator: (val) =>
                      val != null && val.isNotEmpty ? null : 'Required Field',
                ),
                15.verticalSpace,
                const CustomTextFieldLabel(
                  labelText: "Email",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
                CustomStyledTextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "someone@example.com",
                  validator: (val) =>
                      val != null && val.isNotEmpty && isValidEmail(val)
                          ? null
                          : 'Please enter a valid email address',
                ),
                15.verticalSpace,
                const CustomTextFieldLabel(
                  labelText: "Account",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
                CustomStyledTextField(
                  hintText: "Vendor Name",
                  controller: accountController,
                  validator: (val) =>
                      val != null && val.isNotEmpty ? null : 'Required Field',
                ),
                15.verticalSpace,
                const CustomTextFieldLabel(
                  labelText: "Password",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
                CustomStyledTextField(
                  obscureText: true,
                  hintText: "anything@123",
                  controller: passwordController,
                  validator: (val) =>
                      val != null && val.isNotEmpty ? null : 'Required Field',
                ),
                15.verticalSpace,
                const CustomTextFieldLabel(
                  labelText: "Role",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
                CustomStyledTextField(
                  controller: roleController,
                  hintText: "Admin",
                  validator: (val) =>
                      val != null && val.isNotEmpty ? null : 'Required Field',
                ),
                15.verticalSpace,
                const CustomTextFieldLabel(
                  labelText: "Contact Number",
                  fontColor: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
                CustomStyledTextField(
                  keyboardType: TextInputType.phone,
                  hintText: "Your Contact Number",
                  controller: mobilenumberController,
                  validator: (val) =>
                      val != null && val.isNotEmpty ? null : 'Required Field',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Logged In?",
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.sp,
                        ),
                      ),
                    )
                  ],
                ),
                20.verticalSpace,
                SizedBox(
                  height: 50.sp,
                  width: 110.sp,
                  child: CustomElevatedButtonWithIcon(onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      register.firstName = firstnameController.text;
                      register.lastName = lastnameController.text;
                      register.email = emailController.text;
                      register.contactNumber = mobilenumberController.text;
                      register.password = passwordController.text;
                      register.account = accountController.text;
                      register.role = roleController.text;

                      registerViewModel.registerUser(context, register).then(
                        (value) {
                          // Dialogs.showSnackbar(
                          //     context, 'User created successfully!');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                      );
                    }
                  }),
                ),
                40.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
