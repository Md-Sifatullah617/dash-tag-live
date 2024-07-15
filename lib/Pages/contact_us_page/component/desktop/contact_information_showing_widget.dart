import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactInformationShowingWidget extends StatelessWidget {

  IconData? icon;
  String? title;
  String? subTitle1;
  String? subTitle2;
  double? litTileHeight;
  double? listTileWidth;
  double? titleFontSize;
  double? subTitleFontSize;




  ContactInformationShowingWidget({super.key,

    this.icon,
    this.title,
    this.subTitle1,
    this.subTitle2,
    this.listTileWidth,
    this.litTileHeight,
    this.titleFontSize,
    this.subTitleFontSize,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: ListTile(
            leading: Container(
              width: listTileWidth,
              height: litTileHeight,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: ColorManager.blueColor,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white),
            ),
            title: CustomText(
              title: title ?? "",
              fontColor: ColorManager.whiteColor,
              fontSize: titleFontSize,
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: subTitle1 ?? "",
                  fontSize: subTitleFontSize,
                  fontColor: ColorManager.whiteColor,
                ),

                SizedBox(height: 0.10.sh,),

                CustomText(
                  title: subTitle2 ?? "",
                  fontSize: subTitleFontSize,
                  fontColor: ColorManager.whiteColor,

                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Divider(
            thickness: 2, // Slightly reduced thickness
            color: Colors.white,
            height: 20

        ),

      ],
    );
  }
}
