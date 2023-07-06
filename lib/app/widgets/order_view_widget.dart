import 'package:figma_practice/app/pages/bidoffered/bid_offered_page.dart';
import 'package:figma_practice/app/pages/orderdetails/order_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_color.dart';
import '../../core/app_image.dart';
import '../../core/app_size.dart';
import '../../core/app_string.dart';

class OrderViewWidget extends StatefulWidget {
  const OrderViewWidget({super.key});

  @override
  State<OrderViewWidget> createState() => _OrderViewWidgetState();
}

class _OrderViewWidgetState extends State<OrderViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.blueBackground,
            borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    AppString.textOrderId,
                    style: GoogleFonts.dmSans(
                        fontSize: AppSize.textSize16,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    AppString.text27,
                    style: GoogleFonts.dmSans(
                        fontSize: AppSize.textSize16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: AppColor.verticalDivider,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    AppString.textReasonOfMedications,
                    style: GoogleFonts.dmSans(
                        color: AppColor.greyText,
                        fontWeight: FontWeight.w400,
                        fontSize: AppSize.textSize14),
                  ),
                  SizedBox(
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
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    AppString.textZipCode,
                    style: GoogleFonts.dmSans(
                        color: AppColor.greyText,
                        fontWeight: FontWeight.w400,
                        fontSize: AppSize.textSize14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppString.text00501,
                    style: GoogleFonts.dmSans(
                        color: AppColor.orange,
                        fontWeight: FontWeight.w700,
                        fontSize: AppSize.textSize16),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        AppString.textTotalCost,
                        style: GoogleFonts.dmSans(
                            color: AppColor.greyText,
                            fontWeight: FontWeight.w400,
                            fontSize: AppSize.textSize14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppString.text450,
                        style: GoogleFonts.dmSans(
                            color: AppColor.orange,
                            fontWeight: FontWeight.w700,
                            fontSize: AppSize.textSize16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: AppColor.blue),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BidOfferedPage()));
                        },
                        child: Text(
                          AppString.textViewBid,
                          style: GoogleFonts.dmSans(
                              fontSize: AppSize.textSize16,
                              fontWeight: FontWeight.w700),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: AppColor.verticalDivider,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        AppString.textOrderOn,
                        style: GoogleFonts.dmSans(
                            color: AppColor.greyText,
                            fontWeight: FontWeight.w400,
                            fontSize: AppSize.textSize14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppString.text20230704,
                        style: GoogleFonts.dmSans(
                            color: AppColor.orange,
                            fontWeight: FontWeight.w700,
                            fontSize: AppSize.textSize16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppString.textDetails,
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: AppSize.textSize14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.blueBackground,
                          ),
                          child: SvgPicture.asset(
                            AppImage.appArrow,
                            height: 32,
                            width: 32,
                          ),
                        ),
                        onTap: () {
                          /*  Get.to(OrderDetailsPage()*/
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsPage()),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
