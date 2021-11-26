import 'package:get/get.dart';
import 'package:shopping_getx/models/cart.dart';
import 'package:shopping_getx/models/order.dart';

class OrderController extends GetxController {
  final List<Order> _orders = [];

  List<Order> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
        0,
        Order(
            orderId: DateTime.now().toString(),
            products: cartProducts,
            amount: total,
            dateTime: DateTime.now()));

    update();
  }
}
