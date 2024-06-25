import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:version_alpha/pages/home/bloc/home_page_bloc.dart';
import 'package:version_alpha/pages/home/bloc/home_page_states.dart';

import '../bloc/home_page_events.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Container(
      margin: EdgeInsets.only(left: 7.w, right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 15.w,
            height: 12.h,
            child: Image.asset("assets/icons/menu.png"),
          ),
          GestureDetector(
            child: Container(
              width: 30.w,
              height: 30.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/person.png"),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget homePagetext(String text, int color, {int? top}) {
  return Container(
    margin: EdgeInsets.only(top: top!.h),
    child: Text(
      text,
      style: TextStyle(
        color: color == 1 ? Colors.grey : Colors.black,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget searchView() {
  return Row(
    children: [
      Container(
        width: 250.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(15.h),
          border: Border.all(color: Colors.grey.shade600),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 17.h,
              ),
              width: 20.w,
              height: 20.h,
              child: Image.asset("assets/icons/search.png"),
            ),
            Container(
              width: 210.h,
              height: 40.h,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                  hintText: "search for a course",
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.normal,
                  fontSize: 16.sp,
                ),
                autocorrect: false,
                obscureText: false,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        child: Container(
          margin: EdgeInsets.only(left: 10.h),
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(13.w),
            border: Border.all(color: Colors.grey.shade600),
          ),
          child: Image.asset(
            "assets/icons/options.png",
          ),
        ),
      ),
    ],
  );
}

Widget sliderView(BuildContext context, HomePageStates state) {
  return Column(
    children: [
      Container(
        width: 325.w,
        height: 160.h,
        child: PageView(
          onPageChanged: (value) {
            context.read<HomePageBloc>().add(HomePageDots(value));
          },
          children: [
            _sliderContainer(path: "assets/icons/Art.png"),
            _sliderContainer(path: "assets/icons/Image(1).png"),
            _sliderContainer(path: "assets/icons/Image(2).png"),
            _sliderContainer(path: "assets/icons/Image(2).png"),
          ],
        ),
      ),
      Container(
        child: DotsIndicator(
          dotsCount: 4,
          position: state.index,
          decorator: DotsDecorator(
            color: Colors.grey,
            activeColor: Colors.red,
            size: const Size.square(5.0),
            activeSize: const Size(20, 5),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ),
    ],
  );
}

Widget _sliderContainer({String path = "assets/icons/Art.png"}) {
  return Container(
    width: 325.w,
    height: 160.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.h),
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(path),
      ),
    ),
  );
}

Widget menuView() {
  return Column(
    children: [
      Container(
        width: 325.w,
        margin: EdgeInsets.only(top: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _reusableSubtitleText(
              "Choose your course",
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            GestureDetector(
              child: _reusableSubtitleText(
                "see more",
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      // Container(
      //   margin: EdgeInsets.only(top: 10.w),
      //   child: Row(
      //     children: [
      //       _reusableMenuText(
      //         "All",
      //         color: Colors.white,
      //         fontSize: 16,
      //         fontWeight: FontWeight.normal,
      //         bgColor: Colors.red,
      //       ),
      //       _reusableMenuText(
      //         "Popular",
      //         fontSize: 16,
      //         fontWeight: FontWeight.normal,
      //         borderColor: Colors.white,
      //       ),
      //       _reusableMenuText(
      //         "Newest",
      //         fontSize: 16,
      //         fontWeight: FontWeight.normal,
      //         borderColor: Colors.white,
      //       ),
      //     ],
      //   ),
      // ),
    ],
  );
}

Widget _reusableSubtitleText(
  String text, {
  Color color = Colors.black,
  int fontSize = 20,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize.sp,
      ),
    ),
  );
}

Widget _reusableMenuText(
  String text, {
  Color color = const Color.fromARGB(255, 65, 65, 65),
  Color bgColor = Colors.white,
  Color borderColor = Colors.red,
  int fontSize = 20,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return Container(
    margin: EdgeInsets.only(right: 10.w),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(7),
      border: Border.all(
        color: borderColor,
      ),
    ),
    padding: EdgeInsets.only(
      left: 15.w,
      right: 15.w,
      top: 5.w,
      bottom: 5.w,
    ),
    child: _reusableSubtitleText(
      text,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

