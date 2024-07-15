import 'package:dash_and_tag_web_site/Pages/home_page/component/desktop/why_choose_us_card.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WhyChooseUsSection extends StatelessWidget {
  double? cardHeight;
  double? cardWidth;
  int? cardNumber;
  double? paddingonCard;
  double? titleSize;
  double? subtitleSize;

  WhyChooseUsSection({
    super.key,
    this.cardHeight,
    this.cardNumber,
    this.cardWidth,
    this.paddingonCard,
    this.titleSize,
    this.subtitleSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 5.sh,
        ),
        CustomText(
          title: HomePageText.whyChooseUs,
          fontWeight: FontWeight.bold,
          fontSize: 5.sw,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 5.sh,
        ),
        HowItWorksCardItem(
          cardHeight: cardHeight,
          cardWidth: cardWidth,
          crossAxisCount: cardNumber,
          paddingAroundCard: paddingonCard,
          titleFontSize: titleSize,
          subTitleFontSize: subtitleSize,
        ),
        SizedBox(
          height: 5.sh,
        )
      ],
    );
  }
}
