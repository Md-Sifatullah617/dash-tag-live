import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'footer_bottom.dart';
import 'footer_company.dart';
import 'footer_contact.dart';
import 'footer_info.dart';
import 'footer_sitemap.dart';
import 'footer_subscribde.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: getValueForScreenType<double>(
        context: context,
        mobile: 70.sh,
        tablet: 1000,
        desktop: 900,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.sw),
      color: Colors.black,
      child: getValueForScreenType<bool>(
        context: context,
        mobile: true,
        tablet: false,
        desktop: false,
      )
          ? Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // FooterContact(),
                FooterInfo(),
                SizedBox(height: getValueForScreenType<double>(
                  context: context,
                  mobile: 10,
                  tablet: 0,
                  desktop: 0,
                ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FooterSiteMap(),
                    FooterCompany(),
                  ],
                ),
                SizedBox(
                  height: getValueForScreenType<double>(
                  context: context,
                  mobile: 40,
                  tablet: 0,
                  desktop: 0,
                ),
                ),

                FooterSubscribe(),
                // FooterBottom(),
              ],
            )

          : getValueForScreenType<bool>(
        context: context,
        mobile: false,
        tablet: true,
        desktop: false,
      )
         ? Stack(
              clipBehavior: Clip.none,
              children: [
                FooterContact(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 140),
                    FooterInfo(),
                    SizedBox(height: getValueForScreenType<double>(
                      context: context,
                      mobile: 10,
                      tablet: 60,
                      desktop: 60,
                    )),

                    Row(
                      children: [
                        FooterSiteMap(),
                        FooterCompany(),
                      ],
                    ),
                    SizedBox(height: 40),


                    FooterSubscribe(),
                    SizedBox(height: 40),


                    FooterBottom(),
                  ],
                ),
              ],
            )
          : const Stack(
        clipBehavior: Clip.none,
        children: [
          FooterContact(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 140),

              // SizedBox(height: getValueForScreenType<double>(
              //   context: context,
              //   mobile: 10,
              //   tablet: 60,
              //   desktop: 60,
              // )),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FooterInfo(),
                  FooterSiteMap(),
                  FooterCompany()
                ],
              ),
              SizedBox(height: 40),


              FooterSubscribe(),
              SizedBox(height: 40),


              FooterBottom(),
            ],
          ),
        ],
      )
      ,
    );
  }
}
