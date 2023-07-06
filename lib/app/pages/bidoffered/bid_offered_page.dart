import 'package:figma_practice/app/pages/myorders/my_order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app_color.dart';
import '../../../core/app_image.dart';
import '../../../core/app_size.dart';
import '../../../core/app_string.dart';
import 'bid_offered_controller.dart.dart';

class BidOfferedPage extends GetView<BidOfferedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: CircleAvatar(
          radius: 10,
          backgroundColor: AppColor.greySearch,
          child: InkWell(
            child: SvgPicture.asset(AppImage.appBackArrow),
            onTap: () {
              /*  Get.to(MyOrdersPage()*/ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyOrdersPage()),
              );
            },
          ),
        ),
        title: Text(
          AppString.textBidOffered,
          style: GoogleFonts.dmSans(
              fontSize: AppSize.textSize18,
              fontWeight: FontWeight.w700,
              color: AppColor.darkBlue),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              AppImage.appFilter,
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColor.blueBackground,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      AppString.textOrderId,
                      style: GoogleFonts.dmSans(
                          color: AppColor.greyText,
                          fontWeight: FontWeight.w700,
                          fontSize: AppSize.textSize16),
                    ),
                    Text(
                      AppString.text27,
                      style: GoogleFonts.dmSans(
                          color: AppColor.greyText,
                          fontWeight: FontWeight.w700,
                          fontSize: AppSize.textSize16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(
                  color: AppColor.verticalDivider,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      AppString.textReasonOfMedications,
                      style: GoogleFonts.dmSans(
                          color: AppColor.greyText,
                          fontWeight: FontWeight.w400,
                          fontSize: AppSize.textSize14),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppString.textMedical,
                      style: GoogleFonts.dmSans(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w700,
                          fontSize: AppSize.textSize16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      AppString.textNoOfMedications,
                      style: GoogleFonts.dmSans(
                          color: AppColor.greyText,
                          fontWeight: FontWeight.w400,
                          fontSize: AppSize.textSize14),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppString.text1,
                      style: GoogleFonts.dmSans(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w700,
                          fontSize: AppSize.textSize16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
