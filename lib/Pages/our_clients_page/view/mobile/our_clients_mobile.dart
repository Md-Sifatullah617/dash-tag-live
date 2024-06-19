import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../Utils/All_Lists/all_lists.dart';
import '../../../../controller/main_controller.dart';
import '../../../footer/footer.dart';
import '../../../mission_vission_page/component/desktop/product_page_header_image.dart';

class OurClientsMobile extends StatelessWidget {
  OurClientsMobile({super.key});
  final MainController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(controller: controller),
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          ProductsPageHeaderImage(
            title: "Our Clients",
            fontSize: 10.sw,
          ),
          SizedBox(height: 5.sh),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Expanded(
              child: AlignedGridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  itemCount: AllListsManager.ourClientsPageList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.blueColor),
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  AllListsManager.ourClientsPageList[index]),
                            )),
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
