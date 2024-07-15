import 'package:dash_and_tag_web_site/Pages/dash_and_tag_resources/widgets/das_and_tag_bio_commit.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Images/all_images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Texts/Dash_And_Tag_Resources/dash_and_tag_resources.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';

class AboutUsPageLogoAndDescription extends StatelessWidget {
  double? logoHeight;
  double? logoWidth;
  double? aboutUsFontSize;
  double? descriptionContainerWidth;
  double? descriptionFontSize;
  double? descriptionCommitFontSize;

  AboutUsPageLogoAndDescription(
      {super.key,
      this.aboutUsFontSize,
      this.descriptionCommitFontSize,
      this.descriptionContainerWidth,
      this.descriptionFontSize,
      this.logoHeight,
      this.logoWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 30.sw,
        ),
        Card(
          elevation: 10,
          child: Container(
            height: logoHeight,
            width: logoWidth,
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
        SizedBox(
          width: 5.sw,
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomText(
                title: HomePageText.aboutUs,
                letterSpacing: 2,
                fontColor: ColorManager.blueColor,
                fontSize: aboutUsFontSize,
                fontFamily: "Caveat",
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.red,
                width: descriptionContainerWidth,
                padding: const EdgeInsets.all(10),
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
        ),
      ],
    );
  }
}
