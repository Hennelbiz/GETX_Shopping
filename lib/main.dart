import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopping_getx/screens/product_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({ Key? key }) : super(key: key);

  final ThemeData theme = ThemeData(fontFamily: "Lato");

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      /*theme: ThemeData(
        primarySwatch: Colors.purple,
        //accentColor: Colors.deepOrange,
        //colorScheme: ColorScheme(secondary: Colors.deepOrange, onSecondary: Colors.deepOrange, secondaryVariant: Colors.deepOrange, ),
        fontFamily: "Lato",
      ),*/
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.deepOrange, primary: Colors.purple),
      ),
      home: ProductOverViewPage(),
    );
  }
}