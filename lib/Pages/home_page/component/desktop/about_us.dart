import 'package:auto_size_text/auto_size_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Images/all_images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Texts/HomePageText/home_page_text.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
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
              height: getValueForScreenType<double>(
            context: context,
            mobile: 0,
            tablet: 0,
            desktop: 5.sh,
          )),

          //Dash And Tag Resources
          CustomText(
            title: HomePageText.aboutUsResources,
            letterSpacing: 7,
            fontColor: Colors.blue,
            fontSize: getValueForScreenType<double>(
              context: context,
              mobile: 0,
              tablet: 0,
              desktop: 4.sw,
            ),
            fontFamily: "Rajdhani",
          ),

          //About Us Text
          CustomText(
            title: HomePageText.aboutUs,
            letterSpacing: 2,
            fontColor: Colors.deepOrangeAccent,
            fontSize: 50,
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

          //Art FAshion Text, Image & Description
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Art & Fashion Text
                    CustomText(
                      title: HomePageText.aboutUsArtAndFashion,
                      fontSize: getValueForScreenType<double>(
                        context: context,
                        mobile: 0,
                        tablet: 0,
                        desktop: 50,
                      ),
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Rajdhani",
                    ),

                    //Image

                    FittedBox(
                      child: Card(
                        elevation: 10,
                        surfaceTintColor: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            // width: 500,
                            // height: 350,
                            width: 35.sw,
                            height: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      AllImages.webSiteLogo,
                                    ))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 1.sw,
              ),
              const Expanded(
                child: AutoSizeText(
                  HomePageText.aboutUsDescription,
                  minFontSize: 20,
                  maxFontSize: 35,
                  stepGranularity: 1,
                  maxLines: 18,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "Rajdhani",
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
