import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import '../../../../Utils/All_Images/all_images.dart';
import '../../../../Utils/All_Texts/Dash_And_Tag_Resources/dash_and_tag_resources.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';
import '../../widgets/das_and_tag_bio_commit.dart';

class LogoDescriptionMobile extends StatelessWidget {
  double? logoHeight;
  double? logoWidth;
  double? aboutUsFontSize;
  double? descriptionContainerWidth;
  double? descriptionFontSize;
  double? descriptionCommitFontSize;

  LogoDescriptionMobile(
      {super.key,
      this.aboutUsFontSize,
      this.descriptionCommitFontSize,
      this.descriptionContainerWidth,
      this.descriptionFontSize,
      this.logoHeight,
      this.logoWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 3.sh,
          ),
          CustomText(
            title: HomePageText.aboutUs,
            letterSpacing: 2,
            fontColor: ColorManager.blueColor,
            fontSize: aboutUsFontSize,
            fontFamily: "Caveat",
          ),
          SizedBox(
            height: 3.sh,
          ),
          Card(
            elevation: 10,
            child: Container(
              height: logoHeight,
              width: logoWidth,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                AllImages.webSiteLogo,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5.sh,
          ),
          Container(
            // color: Colors.red,
            width: descriptionContainerWidth,
            // color: Colors.amber,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: DashAndTagResourcesText.dashAndTagBio,
                  fontFamily: "Rajdhani",
                  letterSpacing: 1,
                  fontSize: descriptionFontSize,
                ),
                DasAndTagBioCommit(
                  commit: DashAndTagResourcesText.dashAndTagBioCommit1,
                  fontSize: descriptionCommitFontSize,
                ),
                DasAndTagBioCommit(
                  commit: DashAndTagResourcesText.dashAndTagBioCommit2,
                  fontSize: descriptionCommitFontSize,
                ),
                DasAndTagBioCommit(
                  commit: DashAndTagResourcesText.dashAndTagBioCommit3,
                  fontSize: descriptionCommitFontSize,
                ),
                DasAndTagBioCommit(
                  commit: DashAndTagResourcesText.dashAndTagBioCommit4,
                  fontSize: descriptionCommitFontSize,
                ),
                DasAndTagBioCommit(
                  commit: DashAndTagResourcesText.dashAndTagBioCommit5,
                  fontSize: descriptionCommitFontSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
