import 'package:dash_and_tag_web_site/Universal_Widgets/product_image_container.dart';
import 'package:flutter/material.dart';

class ProductImageShowingListViewBuilder extends StatelessWidget {
  final List<int> items;
  final List<String> itemsList;
  double? productContainerHeight;
  double? productContainerWidth;

  ProductImageShowingListViewBuilder({
    super.key,
    required this.items,
    required this.itemsList,
    this.productContainerHeight,
    this.productContainerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        bool showSecondContainer = index + 1 < items.length;
        bool showThirdContainer = index + 2 < items.length;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductImageContainer(
              index: items[index],
              imageList: itemsList,
              imageContainerWidth: productContainerWidth,
              imageContainerHeight: productContainerHeight,
            ),
            const SizedBox(width: 30),

            showSecondContainer
                ? ProductImageContainer(
              index: items[index + 1],
              imageList: itemsList,
              imageContainerWidth: productContainerWidth,
              imageContainerHeight: productContainerHeight,
            )
                : const SizedBox.shrink(),
            showSecondContainer ? const SizedBox(width: 30) : const SizedBox.shrink(),

            showThirdContainer
                ? ProductImageContainer(
              index: items[index + 2],
              imageList: itemsList,
              imageContainerWidth: productContainerWidth,
              imageContainerHeight: productContainerHeight,
            )
                : const SizedBox.shrink(),
            showThirdContainer ? const SizedBox(width: 30) : const SizedBox.shrink(),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 30);
      },
    );
  }
}
