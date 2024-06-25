import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:version_alpha/pages/cart/cart_page.dart';
import 'package:version_alpha/pages/home/home_page.dart';
import 'package:version_alpha/pages/profile/profile_page.dart';

Widget buildPage(int index) {
  List<Widget> _widget = [
    const HomePage(),
    const CartPage(),
    Center(
      child: Text("Course"),
    ),
    const ProfilePage(),
  ];

  return _widget[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
    label: "home",
    activeIcon: SizedBox(
      width: 10.w,
      height: 10.h,
      child: Icon(
        Icons.home,
        color: Colors.red,
      ),
    ),
    icon: SizedBox(
      width: 10.w,
      height: 10.h,
      child: Icon(Icons.home),
    ),
  ),
  BottomNavigationBarItem(
    label: "cart",
    activeIcon: SizedBox(
      width: 10.w,
      height: 10.h,
      child: Icon(
        Icons.shopping_cart,
        color: Colors.red,
      ),
    ),
    icon: SizedBox(
      width: 10.w,
      height: 10.h,
      child: Icon(
        Icons.shopping_cart,
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: "favorite",
    activeIcon: SizedBox(
      width: 10.w,
      height: 10.h,
      child: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    ),
    icon: SizedBox(
      width: 10.w,
      height: 10.h,
      child: Icon(
        Icons.favorite,
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: "profile",
    activeIcon: SizedBox(
      width: 15.w,
      height: 15.h,
      child: Icon(
        Icons.person,
        color: Colors.red,
      ),
    ),
    icon: SizedBox(
      width: 15.w,
      height: 15.h,
      child: Icon(
        Icons.person,
      ),
    ),
  ),
];
