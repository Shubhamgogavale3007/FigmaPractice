import 'package:figma_practice/app/pages/myorders/my_order_page.dart';
import 'package:figma_practice/core/app_color.dart';
import 'package:figma_practice/core/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app_size.dart';
import '../../../core/app_string.dart';
import 'order_details_controller.dart';

class OrderDetailsPage extends GetView<OrderDetailsController> {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            child: CircleAvatar(
              radius: 10,
              backgroundColor: AppColor.greySearch,

              child: SvgPicture.asset(AppImage.appBackArrow),


            ),
            onTap: () {
              /*  Get.to(MyOrdersPage()*/ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyOrdersPage()),
              );
            },
          ),
        ),
        title: Text(
          AppString.textOrderDetails,
          style: GoogleFonts.dmSans(
              fontSize: AppSize.textSize18,
              fontWeight: FontWeight.w700,
              color: AppColor.darkBlue),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      AppString.textOrderId,
                      style: GoogleFonts.dmSans(
                          fontSize: AppSize.textSize14,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      AppString.text27,
                      style: GoogleFonts.dmSans(
                          fontSize: AppSize.textSize14,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      AppString.textOrderOn,
                      style: GoogleFonts.dmSans(
                          color: AppColor.greyText,
                          fontWeight: FontWeight.w400,
                          fontSize: AppSize.textSize14),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppString.text20230704,
                      style: GoogleFonts.dmSans(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w700,
                          fontSize: AppSize.textSize14),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: AppColor.verticalDivider,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  AppString.textReasonOfMedications,
                  style: GoogleFonts.dmSans(
                      color: AppColor.greyText,
                      fontSize: AppSize.textSize14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppString.textMedical,
                  style: GoogleFonts.dmSans(
                      color: AppColor.orange,
                      fontSize: AppSize.textSize16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  AppString.textZipCode,
                  style: GoogleFonts.dmSans(
                      color: AppColor.greyText,
                      fontSize: AppSize.textSize14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppString.text00501,
                  style: GoogleFonts.dmSans(
                      color: AppColor.orange,
                      fontSize: AppSize.textSize16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  AppString.textTotalCost,
                  style: GoogleFonts.dmSans(
                      color: AppColor.greyText,
                      fontSize: AppSize.textSize14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppString.text15,
                  style: GoogleFonts.dmSans(
                      color: AppColor.orange,
                      fontSize: AppSize.textSize16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  AppString.textNoOfMedications,
                  style: GoogleFonts.dmSans(
                      color: AppColor.greyText,
                      fontSize: AppSize.textSize14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppString.text1,
                  style: GoogleFonts.dmSans(
                      color: AppColor.orange,
                      fontSize: AppSize.textSize16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: AppColor.verticalDivider,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.textMedication,
                  style: GoogleFonts.dmSans(
                      color: AppColor.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: AppSize.textSize16),
                ),
                Row(
                  children: [
                    Text(
                      AppString.textQty,
                      style: GoogleFonts.dmSans(
                          color: AppColor.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: AppSize.textSize16),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Text(
                      AppString.textCost,
                      style: GoogleFonts.dmSans(
                          color: AppColor.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: AppSize.textSize16),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: AppColor.verticalDivider,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppString.textAbacavirSulfateLamivudine,
                              style: GoogleFonts.dmSans(
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: AppSize.textSize14),
                            ),
                            Text(
                              AppString.text600300MG,
                              style: GoogleFonts.dmSans(
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: AppSize.textSize12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              AppString.text3,
                              style: GoogleFonts.dmSans(
                                  color: AppColor.bold,
                                  fontWeight: FontWeight.w500,
                                  fontSize: AppSize.textSize14),
                            ),
                            const SizedBox(
                              width: 35,
                            ),
                            Text(
                              AppString.text$1500,
                              style: GoogleFonts.dmSans(
                                  color: AppColor.bold,
                                  fontWeight: FontWeight.w500,
                                  fontSize: AppSize.textSize14),
                            ),
                          ],
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            const Divider(
              color: AppColor.verticalDivider,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppString.textTotalCost,
                      style: GoogleFonts.dmSans(
                          color: AppColor.grey,
                          fontSize: AppSize.textSize14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppString.text15,
                      style: GoogleFonts.dmSans(
                          color: AppColor.orange,
                          fontSize: AppSize.textSize14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppString.textGrandTotal,
                      style: GoogleFonts.dmSans(
                          color: AppColor.grey,
                          fontSize: AppSize.textSize14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppString.text15,
                      style: GoogleFonts.dmSans(
                          color: AppColor.orange,
                          fontSize: AppSize.textSize14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
