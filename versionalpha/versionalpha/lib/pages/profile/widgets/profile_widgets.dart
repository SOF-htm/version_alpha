import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Text(
      "profile",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20.sp,
      ),
    ),
    leading: GestureDetector(
      onTap: (){
        
      },
      child: SizedBox(
        width: 24.w,
        height: 24.h,
        child: Image.asset("assets/icons/log-out.png"),
      ),
    ),
  );
}

Widget profileIconAndEditButton() {
  return Container(
    alignment: Alignment.bottomRight,
    padding: EdgeInsets.only(
      right: 6.w,
    ),
    width: 80.w,
    height: 80.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.w),
      image: const DecorationImage(
        image: AssetImage(
          "assets/icons/headpic.png",
        ),
      ),
    ),
    child: Image(
      width: 25.w,
      height: 25.h,
      image: const AssetImage(
        "assets/icons/edit_3.png",
      ),
    ),
  );
}

var imageInfo = <String, String>{
  "Setitings": "settings",
  "Courses": "play-circle",
  "History": "cube",
};
var routeBtn = <String>{""};

Widget buildListView(BuildContext context) {
  return Column(
    children: [
      ...List.generate(
        imageInfo.length,
        (index) => GestureDetector(
          onTap: () => Navigator.of(context).pushNamed("settings"),
          child: Container(
            margin: EdgeInsets.only(bottom: 15.h),
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                      "assets/icons/${imageInfo.values.elementAt(index)}.png"),
                  width: 40.w,
                  height: 40.h,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  imageInfo.keys.elementAt(index),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
