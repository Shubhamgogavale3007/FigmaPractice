import 'package:get/get.dart';

import '../orderdetails/order_details_page.dart';

class HomeController extends GetxController {
  String abc = 'Hi';

  void navigateToDetails() {
    Get.to(() => const OrderDetailsPage());
  }
}
