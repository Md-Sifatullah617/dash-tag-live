import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../component/desktop/about_us_page_banner.dart';
import '../../component/desktop/about_us_page_logo_and_description.dart';
import 'package:flutter/material.dart';
import '../../../footer/footer.dart';
import 'package:get/get.dart';
import '../../../home_page/component/desktop/our_complience_section.dart';

class DashAndTagResourcesDesktop extends StatelessWidget {
  DashAndTagResourcesDesktop({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          AboutUsPageBanner(
            bannerHeight: 20.sh,
          ),
          AboutUsPageLogoAndDescription(
            aboutUsFontSize: 10.sw,
            descriptionCommitFontSize: 3.sw,
            descriptionContainerWidth: 50.sh,
            descriptionFontSize: 2.sw,
            logoHeight: 22.sh,
            logoWidth: 45.sw,
          ),
          SizedBox(
            height: 5.sh,
          ),
          getValueForScreenType<bool>(
            context: context,
            mobile: true,
            tablet: true,
            desktop: true,
          )
              ? const OurCompliencesSection(
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
                )
              : const OurCompliencesSection(
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
