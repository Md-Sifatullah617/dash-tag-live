import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../Universal_Widgets/custom_appbar.dart';
import '../../../../../Universal_Widgets/product_image_showing_list_view_builder.dart';
import '../../../../../Utils/All_Lists/all_lists.dart';
import '../../../../../controller/main_controller.dart';
import '../../../../footer/footer.dart';
import '../../../../mission_vission_page/component/desktop/product_page_header_image.dart';

class MenTshirtPageTablet extends StatelessWidget {
  const MenTshirtPageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find<MainController>();

    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(controller: controller),

          ProductsPageHeaderImage(
            title: "T-shirt",
            fontSize: 10.sw,
          ),
          const SizedBox(height: 50),

          ProductImageShowingListViewBuilder(
            items: List<int>.generate(
                AllListsManager.kidsClothList.length, (index) => index),
            itemsList: List<String>.from(AllListsManager.kidsClothList),
            productContainerHeight: 30.sh,
            productContainerWidth: 25.sw,
          ),
          const SizedBox(height: 250),

          const Footer(),
        ],
      ),
    );
  }
}
