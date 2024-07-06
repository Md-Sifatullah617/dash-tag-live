import 'package:responsive_builder/responsive_builder.dart';
import '../../../../../Utils/All_Texts/Mission_Vission_Text/mission_vission_text.dart';
import '../../../../../Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../home_page/component/desktop/our_complience_section.dart';
import '../../component/desktop/mission_vission_image_and_description.dart';
import '../../component/desktop/product_page_header_image.dart';

class MissionVissionPageDesktop extends StatelessWidget {
  MissionVissionPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {

    final MainController controller = Get.find();

    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,
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
          MissionVissionImageAndDescription(
            imageWidth: 40.sw,
            imageHeight: 40.sw,
            descriptionFontSize: 2.sw,
            descriptionContainerWidth: 100.sw,
            titleFontSize: 5.sw,
          ),
          SizedBox(
            height: 4.sh,
          ),

          // Our Complients
          OurCompliencesSection(
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
