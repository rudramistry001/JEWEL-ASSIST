import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewel/custom%20widgets/custom_drop_down.dart';
import 'package:jewel/custom%20widgets/custom_text_field.dart';
import 'package:jewel/custom%20widgets/custom_text_field_label.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<TextEditingController> referencesController = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  String selectedOption = 'Gold';
  String selectedItem = 'Gold';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Form"),
      ),
      body: Form(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: Column(
          children: [
            const CustomTextFieldLabel(
              labelText: "Customer Name",
              fontColor: Colors.grey,
              fontWeight: FontWeight.w700,
            ),
            CustomStyledTextField(
              hintText: "Customer Name",
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
              hintText: "Customer's Contact Number",
              validator: (val) =>
                  val != null && val.isNotEmpty ? null : 'Required Field',
            ),
            15.verticalSpace,

            // const Text(
            //   'Selected Option:',
            // ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: (referencesController.length / 3).toInt(),
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.yellow),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "New Item",
                            style: GoogleFonts.quicksand(
                                color: Colors.grey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            selectedOption, // Use the null-aware operator to handle null values
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          CustomDropdownButton<String>(
                            value: selectedOption,
                            items: const ['Gold', 'Silver', 'Platinum'],
                            onChanged: (newValue) {
                              setState(() {
                                selectedOption = newValue!;
                              });
                            },
                          ),
                          if (selectedItem != null)
                            Text(
                              selectedItem, // Use the null-aware operator to handle null values
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          if (selectedItem != null)
                            CustomDropdownButton<String>(
                              value: selectedItem,
                              items: const ['Gold', 'Silver', 'Platinum'],
                              onChanged: (newValue) {
                                setState(() {
                                  selectedItem = newValue!;
                                });
                              },
                            ),
                          const CustomTextFieldLabel(
                            labelText: "Rate",
                            fontColor: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomStyledTextField(
                            //controller: firstnameController,
                            hintText: "Ex : 100",
                            validator: (val) => val != null && val.isNotEmpty
                                ? null
                                : 'Required Field',
                          ),
                          const CustomTextFieldLabel(
                            labelText: "Item Weight",
                            fontColor: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomStyledTextField(
                            //controller: firstnameController,
                            hintText: "Ex : weight in grams",
                            validator: (val) => val != null && val.isNotEmpty
                                ? null
                                : 'Required Field',
                          ),
                          const CustomTextFieldLabel(
                            labelText: "Amount",
                            fontColor: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomStyledTextField(
                            //controller: firstnameController,
                            hintText: "Ex : Bill Amount",
                            validator: (val) => val != null && val.isNotEmpty
                                ? null
                                : 'Required Field',
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    referencesController.add(TextEditingController());
                    referencesController.add(TextEditingController());
                    referencesController.add(TextEditingController());
                  });
                },
                icon: Icon(Icons.add),
                label: Text("ADD ITem")),

            ElevatedButton(
              onPressed: () {},
              child: const Text("submit"),
            ),
          ],
        ),
      ))),
    );
  }
}
