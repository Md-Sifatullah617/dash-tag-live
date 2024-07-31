import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'footer_bottom.dart';
import 'footer_bottom_licence.dart';
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
        mobile: 700,
        tablet: 1000,
        desktop: 850,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 5.sw,
        vertical: getValueForScreenType<double>(
          context: context,
          mobile: 20,
          tablet: 10,
          desktop: 0,
        ),
      ),
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
                const FooterInfo(),
                SizedBox(
                  height: getValueForScreenType<double>(
                    context: context,
                    mobile: 10,
                    tablet: 0,
                    desktop: 0,
                  ),
                ),

                const Row(
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
                const Align(
                  alignment: Alignment.center,
                  child: FooterBottomLicence(),
                ),
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
                    const FooterContact(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(height: 140),
                        const FooterInfo(),
                        SizedBox(
                            height: getValueForScreenType<double>(
                          context: context,
                          mobile: 10,
                          tablet: 60,
                          desktop: 60,
                        )),
                        const Row(
                          children: [
                            FooterSiteMap(),
                            FooterCompany(),
                          ],
                        ),
                        const SizedBox(height: 40),
                        FooterSubscribe(),
                        const SizedBox(height: 40),
                        const FooterBottom(),
                      ],
                    ),
                  ],
                )
              : Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const FooterContact(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(height: 140),

                        // SizedBox(height: getValueForScreenType<double>(
                        //   context: context,
                        //   mobile: 10,
                        //   tablet: 60,
                        //   desktop: 60,
                        // )),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FooterInfo(),
                            FooterSiteMap(),
                            FooterCompany()
                          ],
                        ),
                        SizedBox(
                          height: getValueForScreenType<double>(
                            context: context,
                            mobile: 10,
                            tablet: 20,
                            desktop: 30,
                          ),
                        ),

                        FooterSubscribe(),
                        SizedBox(
                          height: getValueForScreenType<double>(
                            context: context,
                            mobile: 10,
                            tablet: 20,
                            desktop: 30,
                          ),
                        ),

                        const FooterBottom(),
                      ],
                    ),
                  ],
                ),
    );
  }
}
