
import 'package:ecommerce/home.dart';
import 'package:ecommerce/item_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/" :(context) => HomeScreen(),
      "view" :(context) => Item_View(),


    },
  ));
}
