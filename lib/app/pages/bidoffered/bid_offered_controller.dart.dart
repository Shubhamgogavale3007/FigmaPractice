import 'package:figma_practice/app/pages/bidoffered/bid_offered_page.dart';
import 'package:get/get.dart';

import '../../../alertdialog/alert_dialog.dart';

class BidOfferedController extends GetxController {
  List<AlertDialogData> dataList = [
    AlertDialogData(id: 1, isSelected: false.obs, title: 'data 1 '),
    AlertDialogData(id: 2, isSelected: false.obs, title: 'data 2 '),
    AlertDialogData(id: 3, isSelected: false.obs, title: 'data 3 '),
    AlertDialogData(id: 4, isSelected: false.obs, title: 'data 4 '),
    AlertDialogData(id: 5, isSelected: false.obs, title: 'data 5 ')
  ];

  RxList<AlertDialogData> dataListFinal = RxList.empty();

  void navigateToDetails() {
    Get.to(() => BidOfferedPage());
  }

  @override
  void onInit() {
    super.onInit();
    addData();
  }

  void addData() {
    for (var i in dataList) {
      dataListFinal.add(
          AlertDialogData(title: i.title, id: i.id, isSelected: i.isSelected));
    }
    print(dataListFinal.length);
  }
}
