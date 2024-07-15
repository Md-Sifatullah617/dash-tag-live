import 'package:flutter/material.dart';

import '../../../../../Universal_Widgets/product_image_container.dart';

class ProductImageShowingListviewbuilderMobile extends StatelessWidget {

  final List<int> items;
  final List<String> itemsList;
  double? containerHeight;
  double? containerWidth;

  ProductImageShowingListviewbuilderMobile({
    super.key,
    required this.items,
    required this.itemsList,
    this.containerHeight,
    this.containerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: (items.length / 2).ceil(), // Adjust itemCount to handle pairs of items
      itemBuilder: (context, index) {
        int firstIndex = index * 2;
        bool showSecondContainer = firstIndex + 1 < items.length;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductImageContainer(
              index: items[firstIndex],
              imageList: itemsList,
              imageContainerHeight: containerHeight,
              imageContainerWidth: containerWidth,
            ),
            const SizedBox(width: 30),
            showSecondContainer
                ? ProductImageContainer(
              index: items[firstIndex + 1],
              imageList: itemsList,
              imageContainerHeight: containerHeight,
              imageContainerWidth: containerWidth,
            )
                : const SizedBox.shrink(),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 30);
      },
    );
  }
}
