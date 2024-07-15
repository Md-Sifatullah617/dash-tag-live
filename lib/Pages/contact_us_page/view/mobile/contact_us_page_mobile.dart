import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../footer/footer.dart';
import '../../../mission_vission_page/component/desktop/product_page_header_image.dart';
import '../../component/mobile/contact_information_mobile.dart';
import '../../component/mobile/message_submit_form_mobile.dart';

class ContactUsPageMobile extends StatelessWidget {
  ContactUsPageMobile({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.contactUsPageWebBackgroundColor,
      drawer: CustomDrawer(controller: controller),
      body: ListView(
        children: [
          ProductsPageHeaderImage(
            title: "Contact Us",
            fontSize: 10.sw,
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 950,
                  width: double.maxFinite,
                  child: ContactInformationMobile(),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: 600,
                    width: double.maxFinite,
                    child: MessageSubmitFormMobile()),
              ],
            ),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
