import 'package:flutter/material.dart';
import '../../../Universal_Widgets/product_image_showing_list_view_builder.dart';
import '../../../Utils/All_Lists/all_lists.dart';
import '../../footer/footer.dart';
import '../../mission_vission_page/component/desktop/product_page_header_image.dart';

class WomenPoloShirtPag extends StatelessWidget {
  const WomenPoloShirtPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProductsPageHeaderImage(
            title: "Women Polo Shirt's",
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
