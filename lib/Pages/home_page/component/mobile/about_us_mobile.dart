import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';

class AboutUsMobile extends StatelessWidget {
  const AboutUsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getValueForScreenType<double>(
        context: context,
        mobile: 1400,
        tablet: 1200,
        desktop: 900,
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 2.sw),
      color: const Color(0xFFF4F0EC).withOpacity(0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBOx
          SizedBox(
            height: 3.sh,
          ),

          //Dash And Tag Resources
          CustomText(
            title: HomePageText.aboutUsResources,
            letterSpacing: 7,
            fontColor: Colors.blue,
            fontSize: 5.sw,
            fontFamily: "Rajdhani",
          ),

          CustomText(
            title: HomePageText.aboutUsArtAndFashion,
            fontSize: 10.sw,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            fontFamily: "Rajdhani",
          ),

          //Image
          Card(
            elevation: 5,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(2.sw),
              height: 30.sh,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/images/means_jeans/Picture1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 3.sh,
          ),

          //About Us Text
          CustomText(
            title: HomePageText.aboutUs,
            letterSpacing: 2,
            fontColor: Colors.blue,
            fontSize: 15.sw,
            fontFamily: "Caveat",
          ),
          SizedBox(
            height: 3.sh,
          ),

          // getValueForScreenType<bool>(
          //   context: context,
          //   mobile: true,
          //   tablet: false,
          //   desktop: false,
          // ) ? Card(child: Text("Mobile", style: TextStyle(color: Colors.red),))
          // : getValueForScreenType<bool>(
          //   context: context,
          //   mobile: false,
          //   tablet: true,
          //   desktop: false,
          // ) ? Card(child: Text("Tablet", style: TextStyle(color: Colors.red),)) : Card(child: Text("Desktop", style: TextStyle(color: Colors.red),)),

          //Description
          // Expanded(
          //   child: CustomText(
          //     title: HomePageText.aboutUsDescription,
          //     fontColor: Colors.black,
          //     textAlign: TextAlign.start,
          //     fontSize: 3.5.sw,
          //     fontFamily: "Rajdhani",
          //   ),
          // )

          const AutoSizeText(
            HomePageText.aboutUsDescription,
            textAlign: TextAlign.start,
            minFontSize: 18,
            maxFontSize: 21,
            stepGranularity: 1,
            maxLines: 22,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 21,
              color: Colors.black,
              fontFamily: "Rajdhani",
            ),
          ),
        ],
      ),
    );
  }
}
