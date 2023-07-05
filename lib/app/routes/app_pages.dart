//app_pages.dart

import 'package:get/get.dart';
import '../pages/myorders/home_page.dart';
import '../pages/orderdetails/order_details_page.dart';
import '../utilis/binding.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => MyOrdersPage(),
      binding: CommonBinding(),
    ),
    GetPage(
      name: AppRoutes.orderDetails,
      page: () => OrderDetailsPage(),
      binding: CommonBinding(),
    ),
  ];
}