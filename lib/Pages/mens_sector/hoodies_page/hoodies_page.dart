import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Universal_Widgets/product_image_showing_list_view_builder.dart';
import '../../../Utils/All_Lists/all_lists.dart';
import '../../../controller/main_controller.dart';
import '../../footer/footer.dart';
import '../../mission_vission_page/component/desktop/product_page_header_image.dart';

class HoodiesPage extends StatelessWidget {
  HoodiesPage({super.key});
  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(controller: controller),
      body: ListView(
        children: [
          ProductsPageHeaderImage(
            title: "Hoodies",
          ),
          const SizedBox(height: 50),
          ProductImageShowingListViewBuilder(
            items: List<int>.generate(
                AllListsManager.complientsList.length, (index) => index),
            itemsList: List<String>.from(AllListsManager.complientsList),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
