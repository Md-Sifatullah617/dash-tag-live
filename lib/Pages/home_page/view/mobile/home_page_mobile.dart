import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_expantion_widget.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../component/desktop/about_us.dart';
import '../../component/desktop/header_section.dart';
import '../../component/desktop/our_complience_section.dart';
import '../../component/desktop/our_product_section.dart';
import '../../component/desktop/why_choose_us.dart';
import '../../component/mobile/about_us_mobile.dart';
import '../../component/mobile/header_section_mobile.dart';
import '../../component/mobile/our_product_section_mobile.dart';
import '../../component/tablet/about_us_tablet.dart';

class HomePageMobile extends StatelessWidget {
  HomePageMobile({super.key});

  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(controller: controller),
      body: ListView(children: [
        //header appbar
        CustomAppbar(controller: controller),
        HeaderSectionMobile(),
        // const Pages(),
        const AboutUsMobile(),

        SizedBox(
          height: 5.sh,
        ),
        CustomText(
          title: HomePageText.whyChooseUs,
          fontWeight: FontWeight.bold,
          fontSize: 5.sw,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 5.sh,
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          padding: EdgeInsets.symmetric(horizontal: 2.sw),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: AllListsManager.whyChooseUsList.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  FontAwesomeIcons.gift,
                  color: ColorManager.greenColor,
                  size: 3.sh,
                ),
                SizedBox(height: 3.sh),
                CustomText(
                  title: AllListsManager.whyChooseUsList[index]["title"],
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sw,
                ),
                SizedBox(height: 2.sh),
                CustomText(
                  title: AllListsManager.whyChooseUsList[index]["description"],
                  fontWeight: FontWeight.w500,
                  fontSize: 3.sw,
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: 5.sh,
        ),

        const OurProductSectionMobile(),

        // const OurCompliencesSection(
        //   sectionHeight: 50.0,
        //   sectionPadding: 0.02,
        //   titleFontSize: 5.0,
        //   titleSpacing: 4.0,
        //   carouselHeight: 300.0,
        //   imageWidth: 300.0,
        //   imageHeight: 300.0,
        //   buttonPadding: 10.0,
        //   buttonIconSize: 20.0,
        //   viewPortFraction: 0.3,
        // ),

        const OurCompliencesSection(
          sectionHeight: 30.0,
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
      ]),
    );
  }
}
