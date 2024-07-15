import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../Utils/All_Texts/Mission_Vission_Text/mission_vission_text.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../home_page/component/desktop/our_complience_section.dart';
import '../../component/desktop/product_page_header_image.dart';
import '../../component/mobile/mission_vission_image_description_mobile.dart';

class MissionVissionMobile extends StatelessWidget {
  MissionVissionMobile({super.key});
  final MainController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,
      drawer: CustomDrawer(controller: controller),
      body: ListView(
        children: [
          CustomAppbar(controller: controller),

          // Mission Vission Header Image
          ProductsPageHeaderImage(
            title: MissionVissionText.missionVissionTitle,
            fontSize: 10.sw,
          ),
          SizedBox(
            width: 4.sh,
          ),

          //Mission Vission Image & Mission Vission Description
          MissionVissionImageDescriptionMobile(
            imageWidth: 40.sw,
            imageHeight: 40.sw,
            descriptionFontSize: 4.sw,
            descriptionContainerWidth: 100.sw,
            titleFontSize: 5.sw,
          ),
          SizedBox(
            height: 4.sh,
          ),

          // Our Complients
          const OurCompliencesSection(
            sectionHeight: 50.0,
            sectionPadding: 0.02,
            titleFontSize: 5.0,
            titleSpacing: 4.0,
            carouselHeight: 300.0,
            imageWidth: 300.0,
            imageHeight: 300.0,
            buttonPadding: 10.0,
            buttonIconSize: 20.0,
            viewPortFraction: 0.3,
          ),

          //Footer Area
          const Footer(),
        ],
      ),
    );
  }
}
