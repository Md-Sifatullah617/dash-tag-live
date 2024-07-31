import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:dash_and_tag_web_site/Utils/routes.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.controller,
  });

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    // final Shader textGradient = const LinearGradient(
    //   colors: [
    //     Color(0xFF8A2BE2), // BlueViolet
    //     Color(0xFFFF69B4), // HotPink
    //   ],
    // ).createShader(const Rect.fromLTWH(0.0, 0.0, 250.0, 60.0));
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(
        horizontal: getValueForScreenType<double>(
          context: context,
          mobile: Get.width * 0.02,
          tablet: Get.width * 0.02,
          desktop: Get.width * 0.05,
        ),
      ),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.home);
              },
              child: GradientText(
                HomePageText.webSiteName,
                colors: const [
                  Color(0xFF8A2BE2), // BlueViolet
                  Color(0xFFFF69B4), // HotPink
                ],
                style: TextStyle(
                  fontSize: getValueForScreenType<double>(
                    context: context,
                    mobile: 20,
                    tablet: 20,
                    desktop: 28,
                  ),
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black38,
                      offset: Offset(5.0, 5.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          getValueForScreenType<bool>(
            context: context,
            mobile: true,
            tablet: false,
            desktop: false,
          )
              ? IconButton(
                  icon: Icon(Scaffold.of(context).isDrawerOpen
                      ? Icons.close
                      : Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: getValueForScreenType<double>(
                          context: context,
                          mobile: 0,
                          tablet: 375,
                          desktop: 560,
                        ),
                        child: PlutoMenuBar(
                          mode: PlutoMenuBarMode.hover,
                          menus:
                              controller.convertAppBarActionsToPlutoMenuItems(
                                  controller.appbarActions),
                          itemStyle: PlutoMenuItemStyle(
                            padding: EdgeInsets.symmetric(
                              horizontal: getValueForScreenType<double>(
                                context: context,
                                mobile: 5,
                                tablet: 5,
                                desktop: 12,
                              ),
                            ),
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: getValueForScreenType<double>(
                                context: context,
                                mobile: 5,
                                tablet: 11,
                                desktop: 14,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ),
                    // const FooterBottomSocialButtons()
                  ],
                ),
        ],
      ),
    );
  }
}
