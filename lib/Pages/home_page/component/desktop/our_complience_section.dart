// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
// import 'package:dash_and_tag_web_site/controller/main_controller.dart';
// import 'package:dash_and_tag_web_site/utils/all_lists/all_lists.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// class OurCompliencesSection extends StatelessWidget {
//   const OurCompliencesSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<MainController>(
//       builder: (controller) => Container(
//         height: 35.sh,
//         color: Colors.white,
//         padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 5.sh,
//             ),
//
//             Text(
//               'Our Compliant',
//               style: Theme.of(context).textTheme.headlineMedium!.copyWith(
//                     fontWeight: FontWeight.bold,
//                     decoration: TextDecoration.underline,
//                 color: ColorManager.blueColor,
//                 fontSize: 5.sw,
//                   ),
//             ),
//             const SizedBox(
//               height: 40,
//             ),
//             Expanded(
//               child: Row(
//                 children: [
//                   Material(
//                     color: Colors.transparent,
//                     shape: const RoundedRectangleBorder(
//                       side: BorderSide(color: Colors.white),
//                     ),
//                     child: InkWell(
//                       onTap: () {
//                         controller.carouselController.previousPage(
//                           duration: const Duration(milliseconds: 300),
//                           curve: Curves.linear,
//                         );
//                       },
//                       child: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Icon(
//                           Icons.arrow_back_ios,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: CarouselSlider.builder(
//                       itemCount: AllListsManager.complientsList.length,
//                       itemBuilder: (BuildContext context, int itemIndex,
//                               int pageViewIndex) =>
//                           Image.asset(
//                         AllListsManager.complientsList[itemIndex],
//                         width: 200,
//                         height: 200,
//                       ),
//                       options: CarouselOptions(
//                         height: 400,
//                         viewportFraction: 0.2,
//                         autoPlay: true,
//                         enlargeCenterPage: true,
//                         scrollDirection: Axis.horizontal,
//                       ),
//                       carouselController: controller.carouselController,
//                     ),
//                   ),
//                   Material(
//                     color: Colors.transparent,
//                     shape: const RoundedRectangleBorder(
//                       side: BorderSide(color: Colors.white),
//                     ),
//                     child: InkWell(
//                       onTap: () {
//                         controller.carouselController.nextPage(
//                           duration: const Duration(milliseconds: 300),
//                           curve: Curves.linear,
//                         );
//                       },
//                       child: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OurCompliencesSection extends StatelessWidget {
  final double? sectionHeight;
  final double? sectionPadding;
  final double? titleFontSize;
  final double? titleSpacing;
  final double? carouselHeight;
  final double? imageWidth;
  final double? imageHeight;
  final double? buttonPadding;
  final double? buttonIconSize;
  final double? viewPortFraction;

  const OurCompliencesSection({
    super.key,
    this.sectionHeight,
    this.sectionPadding,
    this.titleFontSize,
    this.titleSpacing,
    this.carouselHeight,
    this.imageWidth,
    this.imageHeight,
    this.buttonPadding,
    this.buttonIconSize,
    this.viewPortFraction,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) => Container(
        height: sectionHeight!.sh,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: Get.width * sectionPadding!),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: titleSpacing!.sh,
            ),
            Text(
              'Our Compliant',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: ColorManager.blueColor,
                    fontSize: titleFontSize!.sw,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.carouselController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(buttonPadding!),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: buttonIconSize,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CarouselSlider.builder(
                      itemCount: AllListsManager.complientsList.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Image.asset(
                        AllListsManager.complientsList[itemIndex],
                        width: imageWidth,
                        height: imageHeight,
                      ),
                      options: CarouselOptions(
                        height: carouselHeight,
                        viewportFraction: viewPortFraction!,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      carouselController: controller.carouselController,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.carouselController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(buttonPadding!),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: buttonIconSize,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            getValueForScreenType<bool>(
                    context: context,
                    mobile: false,
                    tablet: false,
                    desktop: true)
                ? Container(
                    height: 150,
                  )
                : const Spacer(),
          ],
        ),
      ),
    );
  }
}
