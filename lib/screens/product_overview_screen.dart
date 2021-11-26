import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_getx/controller/cart_controller.dart';
import 'package:shopping_getx/screens/cart_screen.dart';
import 'package:shopping_getx/widgets/app_drawer.dart';
import 'package:shopping_getx/widgets/badge.dart';
import 'package:shopping_getx/widgets/productgrid.dart';

class ProductOverViewPage extends StatelessWidget {
  ProductOverViewPage({Key? key}) : super(key: key);

  final cartController = Get.put(CartController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
        actions: <Widget>[
          GetBuilder<CartController>(
              init: CartController(),
              builder: (contex) {
                return Badge(
                  child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      onPressed: () {
                        Get.to(() => CartScreen());
                      }),
                  //value: cartController.itemCount.toString(),
                  value: cartController.itemCount.toString(),
                  color: Theme.of(context).accentColor,
                );
              })
        ],
      ),
      drawer: AppDrawer(),
      body: ProductsGrid(),
    );
  }
}
