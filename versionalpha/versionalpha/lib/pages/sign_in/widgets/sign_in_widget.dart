import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _reusableIcons('google'),
        _reusableIcons('apple'),
        _reusableIcons('facebook'),
      ],
    ),
  );
}
Widget _reusableIcons(String iconsName) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset(
        "assets/icons/$iconsName.png",
      ),
    ),
  );
}

Widget forgotPassword() {
  return SizedBox(
    // margin: EdgeInsets.only(left: 25.w),
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: () {},
      child: Text(
        "Forgot Password ?",
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          fontSize: 16.sp,
        ),
      ),
    ),
  );
}

Widget buildLogInAndRegbutton(
  String buttonName,
  int buttonType,
  void Function()? func,
) {
  return GestureDetector(
    onTap:func,
    child: Container(
      margin: EdgeInsets.only(
        top: buttonType == 1 ? 15.h : 5.h,
        bottom: 10.h,
      ),
      width: 325.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: buttonType == 1 ? Colors.red : Colors.white,
        borderRadius: BorderRadius.circular(15.w),
        border: buttonType == 2
            ? Border.all(color: Colors.black.withOpacity(0.5))
            : Border.all(color: Colors.black.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 2,
            color: Colors.grey.withOpacity(0.1),
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: buttonType == 1 ? Colors.white : Colors.black,
          ),
        ),
      ),
    ),
  );
}
