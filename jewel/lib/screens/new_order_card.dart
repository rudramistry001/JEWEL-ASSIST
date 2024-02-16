// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:jewel/custom%20widgets/custom_drop_down.dart';
// import 'package:jewel/custom%20widgets/custom_text_field.dart';
// import 'package:jewel/custom%20widgets/custom_text_field_label.dart';

// class OrderCard extends StatefulWidget {
//   const OrderCard({super.key});

//   @override
//   State<OrderCard> createState() => _OrderCardState();
// }

// class _OrderCardState extends State<OrderCard> {
 
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Container(
//         decoration: BoxDecoration(color: Colors.yellow),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Text(
//                 "New Item",
//                 style: GoogleFonts.quicksand(
//                     color: Colors.grey,
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w800),
//               ),
//               Text(
//                 selectedOption, // Use the null-aware operator to handle null values
//                 style:
//                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               CustomDropdownButton<String>(
//                 value: selectedOption,
//                 items: const ['Gold', 'Silver', 'Platinum'],
//                 onChanged: (newValue) {
//                   setState(() {
//                     selectedOption = newValue!;
//                   });
//                 },
//               ),
//               const CustomTextFieldLabel(
//                 labelText: "Rate",
//                 fontColor: Colors.grey,
//                 fontWeight: FontWeight.w700,
//               ),
//               CustomStyledTextField(
//                 //controller: firstnameController,
//                 hintText: "Ex : 100",
//                 validator: (val) =>
//                     val != null && val.isNotEmpty ? null : 'Required Field',
//               ),
//               const CustomTextFieldLabel(
//                 labelText: "Item Weight",
//                 fontColor: Colors.grey,
//                 fontWeight: FontWeight.w700,
//               ),
//               CustomStyledTextField(
//                 //controller: firstnameController,
//                 hintText: "Ex : weight in grams",
//                 validator: (val) =>
//                     val != null && val.isNotEmpty ? null : 'Required Field',
//               ),
//               const CustomTextFieldLabel(
//                 labelText: "Amount",
//                 fontColor: Colors.grey,
//                 fontWeight: FontWeight.w700,
//               ),
//               CustomStyledTextField(
//                 //controller: firstnameController,
//                 hintText: "Ex : Bill Amount",
//                 validator: (val) =>
//                     val != null && val.isNotEmpty ? null : 'Required Field',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
