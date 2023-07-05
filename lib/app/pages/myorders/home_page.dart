import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class MyOrdersPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: GestureDetector(
      child: Text(controller.abc),
      onTap: () {
        controller.navigateToDetails();
      },
    ))));
  }
}
