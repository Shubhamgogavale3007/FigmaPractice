import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_string.dart';
import 'order_details_controller.dart';

class OrderDetailsPage extends GetView<OrderDetailsController> {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          AppString.textMyOrders,
          style: TextStyle(),
        ),
      ),
    );
  }
}
