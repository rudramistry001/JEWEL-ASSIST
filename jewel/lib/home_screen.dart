import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jewel/custom%20widgets/custom_text_field.dart';
import 'package:jewel/screens/order_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow.shade200,
              child: Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    40.verticalSpace,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome back",
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rudra H Mistry",
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    SizedBox(
                      height: 100.sp,
                      width: 390.sp,
                      child: const CustomStyledTextField(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        hintText: "Search...",
                        labelText: "Search",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Generate Recipt",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderScreen()),
                      );
                    },
                    child: const Text("Create Order"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
