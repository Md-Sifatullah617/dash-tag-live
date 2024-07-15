import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'meter_item.dart';

class FooterContact extends StatelessWidget {
  const FooterContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -130,
      left: Get.width * 0.1,
      right: Get.width * 0.1,
      child: Container(
        height: 250,
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFEDB42), Color(0xff94DA44)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: getValueForScreenType<double>(
                      context: context,
                      mobile: 0,
                      tablet: 15,
                      desktop: 36,
                    ),
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: getValueForScreenType<double>(
                  context: context,
                  mobile: 0,
                  tablet: 12,
                  desktop: 24,
                ),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Let\'s Work',
                      style: TextStyle(
                        fontSize: getValueForScreenType<double>(
                          context: context,
                          mobile: 0,
                          tablet: 20,
                          desktop: 40,
                        ),
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5,
                      ),
                    ),
                    Text(
                      'together',
                      style: TextStyle(
                        fontSize: getValueForScreenType<double>(
                          context: context,
                          mobile: 0,
                          tablet: 20,
                          desktop: 40,
                        ),
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getValueForScreenType<double>(
                  context: context,
                  mobile: 0,
                  tablet: 12,
                  desktop: 24,
                ),),
                Material(
                  color: Colors.orange,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getValueForScreenType<double>(
                            context: context,
                            mobile: 0,
                            tablet: 12,
                            desktop: 24,
                          ), vertical: getValueForScreenType<double>(
                        context: context,
                        mobile: 0,
                        tablet: 6,
                        desktop: 12,
                      ),),
                      child: Row(
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: getValueForScreenType<double>(
                                context: context,
                                mobile: 0,
                                tablet: 7,
                                desktop: 14,
                              ),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(width: getValueForScreenType<double>(
                            context: context,
                            mobile: 0,
                            tablet: 4,
                            desktop: 8,
                          ),),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Colors.white,
                            size: getValueForScreenType<double>(
                              context: context,
                              mobile: 0,
                              tablet: 7,
                              desktop: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 88,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    getValueForScreenType<bool>(
                      context: context,
                      mobile: false,
                      tablet: true,
                      desktop: false,
                    ) ? 30 :
                    50, (index) {
                  final isTall = index % 2 != 0;
                  final metric = (index != 0 && (index + 1) % 10 == 0)
                      ? '${(index + 1) / 2}'
                      : '';

                  return MeterItem(isTall: isTall, metric: metric);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
