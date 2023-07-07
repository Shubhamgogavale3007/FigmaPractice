import 'package:figma_practice/app/pages/myorders/my_order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app_color.dart';
import '../../../core/app_image.dart';
import '../../../core/app_size.dart';
import '../../../core/app_string.dart';
import 'bid_offered_controller.dart.dart';

class BidOfferedPage extends GetView<BidOfferedController> {
  bool lowestPrice = false;
  bool highestPrice = false;
  bool freeDelivery = false;
  bool pickUp = false;

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
            child: InkWell(
              child: SvgPicture.asset(
                AppImage.appFilter,
                height: 24,
                width: 24,
              ),
              onTap: () {
                /*Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlertMsg()));*/

                showDialog(
                    context: context,
                    builder: (_) => Dialog(
                          child: Scaffold(
                            appBar: AppBar(
                              automaticallyImplyLeading: false,
                              backgroundColor: AppColor.orange,
                              elevation: 0,
                              title: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  AppString.textQuickFilters,
                                  style: GoogleFonts.dmSans(
                                    color: AppColor.white,
                                    fontSize: AppSize.textSize16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              centerTitle: false,
                              actions: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: InkWell(
                                    child: Image.asset(
                                      AppImage.appCancel,
                                      height: 24,
                                      width: 24,
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            body: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Obx(() => ListView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                          controller.dataListFinal.length,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              controller
                                                  .dataListFinal[index].title!,
                                              style: GoogleFonts.dmSans(
                                                  color: AppColor.greyText,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: AppSize.textSize14),
                                            ),
                                            Obx(() => Checkbox(
                                                  activeColor: AppColor.orange,
                                                  side: const BorderSide(
                                                      color: AppColor.orange),
                                                  shape: const CircleBorder(),
                                                  value: controller
                                                      .dataListFinal[index]
                                                      .isSelected!
                                                      .value,
                                                  onChanged: (bool? value) {
                                                    controller
                                                        .dataListFinal[index]
                                                        .isSelected!
                                                        .value = value!;
                                                  },
                                                )),
                                          ],
                                        );
                                      })),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SizedBox(
                                    height: 46,
                                    width: 160,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            primary: AppColor.blue),
                                        onPressed: () {},
                                        child: Text(
                                          AppString.textApplyFilter,
                                          style: GoogleFonts.dmSans(
                                              fontSize: AppSize.textSize16,
                                              fontWeight: FontWeight.w700),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ));
              },
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
