import 'package:get/get.dart';

import '../pages/myorders/home_controller.dart';
import '../pages/orderdetails/order_details_controller.dart';



class CommonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => OrderDetailsController());
  }
}