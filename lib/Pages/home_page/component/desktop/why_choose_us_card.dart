// import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
// import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import '../../../../universal_widgets/custom_text.dart';
//
// class HowItWorksCardItem extends StatefulWidget {
//
//   HowItWorksCardItem({super.key,
//
//   });
//
//   @override
//   State<HowItWorksCardItem> createState() => _HowItWorksCardItemState();
// }
//
// class _HowItWorksCardItemState extends State<HowItWorksCardItem> {
//   // Track hover state for each item
//   List<bool> isHovering = [];
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize hover state list with false values
//     isHovering =
//         List.generate(AllListsManager.whyChooseUsList.length, (index) => false);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: ScrollPhysics(),
//       padding: const EdgeInsets.symmetric(horizontal: 150),
//       shrinkWrap: true,
//       itemCount: AllListsManager.whyChooseUsList.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         childAspectRatio: 2,
//       ),
//       itemBuilder: (context, index) {
//         return MouseRegion(
//           onEnter: (val) => setState(() => isHovering[index] = true),
//           onExit: (val) => setState(() => isHovering[index] = false),
//           child: AnimatedContainer(
//             width: 200,
//             height: 200,
//             duration: const Duration(milliseconds: 240),
//             padding: const EdgeInsets.all(32),
//             decoration: BoxDecoration(
//               color: isHovering[index]
//                   ? ColorManager.whiteColor
//                   : ColorManager.whiteColor.withOpacity(0),
//               boxShadow: [
//                 BoxShadow(
//                   color: isHovering[index]
//                       ? ColorManager.textPrimary.withOpacity(0.15)
//                       : ColorManager.textPrimary.withOpacity(0),
//                   offset: const Offset(0, 6),
//                   blurRadius: 10,
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Icon(
//                   FontAwesomeIcons.gift,
//                   color: ColorManager.greenColor,
//                 ),
//                 const SizedBox(height: 32),
//                 CustomText(
//                   title: AllListsManager.whyChooseUsList[index]["title"],
//                   fontWeight: FontWeight.bold,
//                 ),
//                 const SizedBox(height: 32),
//                 CustomText(
//                   title: AllListsManager.whyChooseUsList[index]["description"],
//                   fontWeight: FontWeight.w500,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HowItWorksCardItem extends StatefulWidget {
  final int? crossAxisCount;
  final double? cardHeight;
  final double? cardWidth;
  final double? paddingAroundCard;
  final double? titleFontSize;
  final double? subTitleFontSize;

  const HowItWorksCardItem({
    super.key,
    this.crossAxisCount,
    this.cardHeight,
    this.cardWidth,
    this.paddingAroundCard,
    this.titleFontSize,
    this.subTitleFontSize,
  });

  @override
  State<HowItWorksCardItem> createState() => _HowItWorksCardItemState();
}

class _HowItWorksCardItemState extends State<HowItWorksCardItem> {
  List<bool> isHovering = [];

  @override
  void initState() {
    super.initState();
    isHovering =
        List.generate(AllListsManager.whyChooseUsList.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      physics: const ScrollPhysics(),
      padding:
          EdgeInsets.symmetric(horizontal: widget.paddingAroundCard ?? 0.0),
      shrinkWrap: true,
      itemCount: AllListsManager.whyChooseUsList.length,
      crossAxisCount: widget.crossAxisCount ?? 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        return MouseRegion(
          onEnter: (val) => setState(() => isHovering[index] = true),
          onExit: (val) => setState(() => isHovering[index] = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 240),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isHovering[index]
                  ? ColorManager.whiteColor
                  : ColorManager.webBackgroundColor.withOpacity(0.15),
              boxShadow: [
                BoxShadow(
                  color: isHovering[index]
                      ? ColorManager.textPrimary.withOpacity(0.15)
                      : ColorManager.textPrimary.withOpacity(0),
                  offset: const Offset(0, 6),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(FontAwesomeIcons.gift,
                    color: ColorManager.greenColor),
                SizedBox(
                    height: getValueForScreenType<double>(
                        context: context, mobile: 10, tablet: 15, desktop: 20)),
                Text(
                  AllListsManager.whyChooseUsList[index]["title"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getValueForScreenType<double>(
                        context: context, mobile: 15, tablet: 25, desktop: 20),
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                    height: getValueForScreenType<double>(
                        context: context, mobile: 10, tablet: 15, desktop: 20)),
                Text(
                  AllListsManager.whyChooseUsList[index]["description"],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: getValueForScreenType<double>(
                        context: context, mobile: 10, tablet: 15, desktop: 20),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


//
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const Icon(
// FontAwesomeIcons.gift,
// color: ColorManager.greenColor,
// ),
// const SizedBox(height: 32),
// CustomText(
// title: AllListsManager.whyChooseUsList[index]["title"],
// fontWeight: FontWeight.bold,
// fontSize: widget.titleFontSize,
// ),
// SizedBox(height: 2.sh),
// CustomText(
// title: AllListsManager.whyChooseUsList[index]["description"],
// fontWeight: FontWeight.w500,
// fontSize: widget.subTitleFontSize,
// ),
// ],
// ),