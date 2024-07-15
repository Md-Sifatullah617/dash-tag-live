import 'package:flutter/material.dart';
import '../../../Universal_Widgets/product_image_showing_list_view_builder.dart';
import '../../../Utils/All_Lists/all_lists.dart';
import '../../footer/footer.dart';
import '../../mission_vission_page/component/desktop/product_page_header_image.dart';

class SweatersPage extends StatelessWidget {
  const SweatersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProductsPageHeaderImage(
            title: "Sweaters",
          ),
          const SizedBox(height: 50),
          ProductImageShowingListViewBuilder(
            items: List<int>.generate(
                AllListsManager.mensJeansList.length, (index) => index),
            itemsList: List<String>.from(AllListsManager.mensJeansList),
          ),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
