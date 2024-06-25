import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:version_alpha/pages/cart/cart_model.dart';
import 'package:version_alpha/pages/course/course.dart';

import 'cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Consumer<Cart>(
        builder: (context, value, child) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    Course individualCourse = value.getUserCart()[index];
                    return CartItem(course: individualCourse);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
