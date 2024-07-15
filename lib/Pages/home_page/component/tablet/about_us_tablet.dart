
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';

class AboutUsTablet extends StatelessWidget {
  const AboutUsTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getValueForScreenType<double>(
        context: context,
        mobile: 1200,
        tablet: 1600,
        desktop: 1000,
      ),
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 30, right: 50),
      color: const Color(0xFFF4F0EC).withOpacity(0.3),
      // color: Colors.red,
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
            fontSize: 20,
            fontFamily: "Rajdhani",
          ),

          CustomText(
            title: HomePageText.aboutUsArtAndFashion,
            fontSize: 50,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            fontFamily: "Rajdhani",
          ),

          //Image
          Card(
            elevation: 5,
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              height: 450,
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
            height: 5.sh,
          ),

          //About Us Text
          CustomText(
            title: HomePageText.aboutUs,
            letterSpacing: 2,
            fontColor: Colors.blue,
            fontSize: 10.sw,
            fontFamily: "Caveat",
          ),

          // getValueForScreenType<bool>(
          //   context: context,
          //   mobile: true,
          //   tablet: false,
          //   desktop: false,
          // ) ? Card(child: Text("Mobile", style: TextStyle(color: Colors.red),))
          //     : getValueForScreenType<bool>(
          //   context: context,
          //   mobile: false,
          //   tablet: true,
          //   desktop: false,
          // ) ? Card(child: Text("Tablet", style: TextStyle(color: Colors.red),)) : Card(child: Text("Desktop", style: TextStyle(color: Colors.red),)),

          //Description
          // Align(
          //   alignment: Alignment.center,
          //   child: Expanded(
          //     child: CustomText(
          //       title: HomePageText.aboutUsDescription,
          //       fontColor: Colors.black,
          //       textAlign: TextAlign.center,
          //       fontSize: Get.width*0.03,
          //       fontFamily: "Rajdhani",
          //     ),
          //   ),
          // )

          AutoSizeText(
            HomePageText.aboutUsDescription,
            maxLines: 17,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: Get.width * 0.03,
              color: Colors.black,
              fontFamily: "Rajdhani",
            ),
            maxFontSize: 30,
            minFontSize: 28,
            stepGranularity: 1, // Ensure this is a divisor of minFontSize
          )
        ],
      ),
    );
  }
}
