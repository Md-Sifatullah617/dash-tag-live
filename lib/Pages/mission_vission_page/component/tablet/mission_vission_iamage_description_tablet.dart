import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../Utils/All_Images/all_images.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../../../../Utils/All_Texts/Mission_Vission_Text/mission_vission_text.dart';

class MissionVissionIamageDescriptionTablet extends StatelessWidget {
  double? imageHeight;
  double? imageWidth;
  double? titleFontSize;
  double? descriptionFontSize;
  double? descriptionContainerWidth;

  MissionVissionIamageDescriptionTablet(
      {super.key,
      this.imageWidth,
      this.imageHeight,
      this.descriptionFontSize,
      this.descriptionContainerWidth,
      this.titleFontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.sw,
        right: 5.sw,
        top: 2.sh,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Mission Vission Image
          Center(
            child: Card(
              elevation: 10,
              child: Container(
                height: imageHeight,
                width: imageWidth,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AllImages.webSiteLogo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 3.sh,
          ),

          //Mission Title
          CustomText(
            title: MissionVissionText.missionTitle,
            fontWeight: FontWeight.bold,
            fontFamily: HomePageText.fontFamilyNameRajdhani,
            fontColor: ColorManager.blueColor,
            // fontSize: 5.sw,
            fontSize: titleFontSize,
          ),
          SizedBox(
            height: 1.sh,
          ),

          //Mission Description
          Container(
            color: ColorManager.whiteColor,
            padding: const EdgeInsets.all(20),
            // width: 100.sw,
            width: descriptionContainerWidth,
            child: Center(
              child: CustomText(
                title: MissionVissionText.missionTitleDescription,
                fontWeight: FontWeight.bold,
                fontFamily: HomePageText.fontFamilyNameRajdhani,
                fontColor: ColorManager.blackColor,
                // fontSize: 2.5.sw,
                fontSize: descriptionFontSize,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: 1.sh,
          ),

          //Vission Title
          CustomText(
            title: MissionVissionText.vissionTitle,
            fontWeight: FontWeight.bold,
            fontFamily: HomePageText.fontFamilyNameRajdhani,
            fontColor: ColorManager.blueColor,
            fontSize: titleFontSize,
          ),
          SizedBox(
            height: 1.sh,
          ),

          //Vission Description
          Container(
            color: ColorManager.whiteColor,
            padding: const EdgeInsets.all(20),
            width: descriptionContainerWidth,
            child: Center(
              child: CustomText(
                title: MissionVissionText.vissionTitleDescription,
                fontWeight: FontWeight.bold,
                fontFamily: HomePageText.fontFamilyNameRajdhani,
                fontColor: ColorManager.blackColor,
                fontSize: descriptionFontSize,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: 1.sh,
          ),

          //Value Title
          CustomText(
            title: MissionVissionText.valueTitle,
            fontWeight: FontWeight.bold,
            fontFamily: HomePageText.fontFamilyNameRajdhani,
            fontColor: ColorManager.blueColor,
            fontSize: titleFontSize,
          ),
          SizedBox(
            height: 1.sh,
          ),

          //Value Description
          Container(
            color: ColorManager.whiteColor,
            padding: const EdgeInsets.all(20),
            width: descriptionContainerWidth,
            child: Center(
              child: CustomText(
                title: MissionVissionText.valueTitleDescription,
                fontWeight: FontWeight.bold,
                fontFamily: HomePageText.fontFamilyNameRajdhani,
                fontColor: ColorManager.blackColor,
                fontSize: descriptionFontSize,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: 1.sh,
          ),
        ],
      ),
    );
  }
}
