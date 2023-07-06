import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app_color.dart';
import '../../../core/app_image.dart';
import '../../../core/app_size.dart';
import '../../../core/app_string.dart';
import '../../widgets/order_view_widget.dart';
import 'my_order_controller.dart';

class MyOrdersPage extends GetView<MyOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.textMyOrders,
                    style: GoogleFonts.dmSans(
                        fontSize: AppSize.textSize18,
                        fontWeight: FontWeight.w700,
                        color: AppColor.darkBlue),
                  ),
                  Container(
                    height: 40,
                    width: 84,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          AppImage.appNotification,
                          height: 24,
                          width: 24,
                        ),
                        Image.asset(
                          AppImage.appProfile,
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 48,
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.greySearch,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, right: 12, left: 20),
                      child: SvgPicture.asset(
                        AppImage.appSearch,
                        height: 24,
                        width: 24,
                      ),
                    ),
                    hintText: AppString.textSearchByName,
                    hintStyle: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: AppSize.textSize16,
                        color: AppColor.greyText)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return OrderViewWidget();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
