import 'package:figma_practice/app/pages/bidoffered/bid_offered_page.dart';
import 'package:get/get.dart';

class BidOfferedController extends GetxController {
  void navigateToDetails() {
    Get.to(() => BidOfferedPage());
  }
}
