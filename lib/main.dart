import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopping_getx/screens/product_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        //colorScheme: ColorScheme(secondary: Colors.deepOrange, onSecondary: Colors.deepOrange, secondaryVariant: Colors.deepOrange),
        fontFamily: "Lato",
      ),
      home: ProductOverViewPage(),
    );
  }
}