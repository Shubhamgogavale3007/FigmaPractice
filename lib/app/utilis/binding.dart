import 'package:get/get.dart';

import '../pages/myorders/my_order_controller.dart';
import '../pages/orderdetails/order_details_controller.dart';

class CommonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrderController());
    Get.lazyPut(() => OrderDetailsController());
  }
}
