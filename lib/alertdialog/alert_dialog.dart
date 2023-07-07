import 'package:get/get.dart';

class AlertDialogData {
  int id;
  String? title;
  RxBool? isSelected;

  AlertDialogData(
      {required this.id, required this.title, required this.isSelected});
}
