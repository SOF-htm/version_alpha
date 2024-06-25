import 'package:flutter/material.dart';

import '../course/course.dart';

class Cart extends ChangeNotifier {
  List<Course> courseShop = [
    Course(
      name: 'test again',
      price: '299',
      description: 'test description',
      imagePath: 'assets/logo.png',
    ),
    Course(
      name: 'test again',
      price: '299',
      description: 'test description',
      imagePath: 'assets/images/logo.png',
    ),
    Course(
      name: 'test again',
      price: '299',
      description: 'test description',
      imagePath: 'assets/logo.png',
    ),
    Course(
      name: 'test again',
      price: '299',
      description: 'test description',
      imagePath: 'assets/logo.png',
    ),
  ];
  List<Course> userCart = [];

  List<Course> getCourseList() {
    return courseShop;
  }

  List<Course> getUserCart() {
    return userCart;
  }

  void addItemToCart(Course course) {
    userCart.add(course);
    notifyListeners();
  }

  void removeItemFromCart(Course course) {
    userCart.remove(course);
    notifyListeners();
  }
}
