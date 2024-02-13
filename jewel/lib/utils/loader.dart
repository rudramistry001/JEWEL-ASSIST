import 'package:flutter/material.dart';
import 'package:jewel/constants/color.dart';

class Loading {
  late BuildContext context;
  bool isLoading = false;
  Loading(this.context);
  startLoading() async {
    isLoading = true;
    return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(0.0), // Adjust the radius as needed
            ),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            content: Center(
              child: CircularProgressIndicator(
                color: ConstantColor.secondaryColor,
              ),
            )
            // Image.asset(
            //   ImagePath.loaderGif,
            //   height: 60.sp,
            // ),
            );
      },
    );
  }

  Future<void> stopLoading() async {
    if (isLoading) {
      isLoading = false;
      if (Navigator.canPop(context)) {
        Navigator.of(context).pop();
      }
    }
  }
}
