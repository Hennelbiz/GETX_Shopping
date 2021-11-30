import 'package:flutter/material.dart';
import 'package:shopping_getx/models/order.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class OrderItem extends StatefulWidget {
  final Order order;
  const OrderItem(this.order, {Key? key}) : super(key: key);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.order.amount.toStringAsFixed(2)),
            subtitle: Text(
                DateFormat('dd/MM/yyyy hh:mm').format(widget.order.dateTime)),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                icon:
                    Icon(_isExpanded ? Icons.expand_less : Icons.expand_more)),
          ),
          if (_isExpanded)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              height: min(widget.order.products.length * 20 + 10, 180),
              child: ListView(
                children: widget.order.products
                    .map((product) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.productTitle,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                                '${product.productQuantity}X ₦${product.productPrice}',
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                          ],
                        ))
                    .toList(),
              ),
            )
        ],
      ),
    );
  }
}