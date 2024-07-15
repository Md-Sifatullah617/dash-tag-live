import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../home_page/component/desktop/our_complience_section.dart';
import '../../component/desktop/about_us_page_banner.dart';
import '../../component/mobile/logo_description_mobile.dart';

class DashAndTagResoucresesMobile extends StatelessWidget {
  DashAndTagResoucresesMobile({super.key});

  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(controller: controller),
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          AboutUsPageBanner(
            bannerHeight: 10.sh,
          ),
          SizedBox(
            height: 1.sh,
          ),
          LogoDescriptionMobile(
            aboutUsFontSize: 10.sw,
            descriptionCommitFontSize: 4.sw,
            descriptionContainerWidth: 50.sh,
            descriptionFontSize: 3.5.sw,
            logoHeight: 40.sh,
            logoWidth: double.maxFinite,
          ),
          SizedBox(
            height: 2.sh,
          ),
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
          const Footer(),
        ],
      ),
    );
  }
}


// AboutUsPageLogoAndDescriptionTablet(
// aboutUsFontSize: 10.sw,
// descriptionCommitFontSize: 3.sw,
// descriptionContainerWidth: 50.sh,
// descriptionFontSize: 2.sw,
// logoHeight: 15.sh,
// logoWidth: 35.sw,
// ),