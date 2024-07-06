import 'package:dash_and_tag_web_site/Pages/footer/footer.dart';
import 'package:dash_and_tag_web_site/Pages/mission_vission_page/component/desktop/product_page_header_image.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_appbar.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/Utils/All_Texts/HomePageText/home_page_text.dart';
import 'package:dash_and_tag_web_site/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../Utils/All_Lists/all_lists.dart';
import '../../../controller/main_controller.dart';

class ProductShowcasePage extends StatelessWidget {
  ProductShowcasePage({super.key});
  final MainController controller = Get.find();

  String getTitleBasedOnSelection() {
    String currentRoute = Get.currentRoute;
    switch (currentRoute) {
      case AppRoutes.accessoeies:
        return "Accessories";
      case AppRoutes.leatherproduct:
        return "Leather Products";
      case AppRoutes.menshoodies:
        return "Men's Hoodies";
      case AppRoutes.menspoloshirts:
        return "Men's Polo Shirts";
      case AppRoutes.menstshirts:
        return "Men's T-Shirts";
      case AppRoutes.mensshortscargo:
        return "Men's Shorts & Cargo";
      case AppRoutes.mensshirtspants:
        return "Men's Shirts & Pants";
      case AppRoutes.mensjeans:
        return "Men's Jens";
      case AppRoutes.mensjackets:
        return "Men's Jackets";
      case AppRoutes.menssweaters:
        return "Men's Sweaters";
      case AppRoutes.womenstshirts:
        return "Women's T-Shirts";
      case AppRoutes.womensshirtspants:
        return "Women's Shirts & Pants";
      case AppRoutes.womensjeans:
        return "Women's Jens";
      case AppRoutes.womenspoloshirts:
        return "Women's Polo Shirts";
      case AppRoutes.womensshortscargo:
        return "Women's Shorts & Cargo";
      case AppRoutes.womenssweaters:
        return "Women's Sweaters";
      case AppRoutes.womenshoodies:
        return "Women's Hoodies";
      case AppRoutes.boystshirts:
        return "Boy's T-Shirts";
      case AppRoutes.boyspoloshirts:
        return "Boy's Polo Shirts";
      case AppRoutes.boysshirtspants:
        return "Boy's Shirts & Pants";
      case AppRoutes.boyshortscargo:
        return "Boy's Shorts & Cargo";
      case AppRoutes.boysjeans:
        return "Boy's Jeans";
      case AppRoutes.boyssweaters:
        return "Boy's Sweaters";
      case AppRoutes.boyshoodies:
        return "Boy's Hoodies";
      // case AppRoutes.boysjackets:
      //   return "Boy's Jackets";
      case AppRoutes.girlstshirts:
        return "Girl's T-Shirts";
      case AppRoutes.girlsshirtspants:
        return "Girl's Shirts";
      case AppRoutes.girlshortscargo:
        return "Girl's Shorts & Cargo";
      case AppRoutes.girlshoodies:
        return "Girl's Hoodies";
      case AppRoutes.girlsjeans:
        return "Girl's Jeans";
      case AppRoutes.girlspoloshirts:
        return "Girl's Polo Shirts";
      case AppRoutes.girlssweaters:
        return "Girl's Sweaters";

      default:
        return "Products";
    }
  }

  // Define a method to get the correct list based on the current route
  List getListBasedOnSelection() {
    String currentRoute = Get.currentRoute;
    switch (currentRoute) {
      case AppRoutes.accessoeies:
        return AllListsManager.accessoriesList;
      case AppRoutes.menshoodies:
        return AllListsManager.mensHoodiesList;
      case AppRoutes.menstshirts:
        return AllListsManager.mensTShirtsList;
      case AppRoutes.menssweaters:
        return AllListsManager.mensSweatersList;
      case AppRoutes.menspoloshirts:
        return AllListsManager.mensPoloShirts;
      case AppRoutes.mensshirtspants:
        return AllListsManager.menShirtsAndPantsList;
      case AppRoutes.mensshortscargo:
        return AllListsManager.mensShortsAndCargoList;
      case AppRoutes.mensjeans:
        return AllListsManager.mensJeansList;
      case AppRoutes.mensjackets:
        return AllListsManager.mensJacketsList;
      case AppRoutes.womenstshirts:
        return AllListsManager.womensTShirtsList;
      case AppRoutes.womensshirtspants:
        return AllListsManager.womenShirtsAndPantsList;
      case AppRoutes.womensshortscargo:
        return AllListsManager.womenShortsAndCargoList;
      case AppRoutes.womensjeans:
        return AllListsManager.womenJensList;
      case AppRoutes.womenspoloshirts:
        return AllListsManager.womenPoloShirtsList;
      case AppRoutes.womenshoodies:
        return AllListsManager.womenHoodiesList;
      case AppRoutes.womenssweaters:
        return AllListsManager.womenSweatersList;
      case AppRoutes.boystshirts:
        return AllListsManager.boysTShirtsList;
      case AppRoutes.boysshirtspants:
        return AllListsManager.boysShirtsAndPantsList;
      case AppRoutes.boyspoloshirts:
        return AllListsManager.boysPoloShirtList;
      case AppRoutes.boysjeans:
        return AllListsManager.boysJensList;
      case AppRoutes.boyshortscargo:
        return AllListsManager.boysShortsAndCargoList;
      case AppRoutes.boyshoodies:
        return AllListsManager.boysHoodiesList;
      case AppRoutes.boyssweaters:
        return AllListsManager.boysSweatersList;
      case AppRoutes.girlstshirts:
        return AllListsManager.girlsTshirtsList;
      case AppRoutes.girlspoloshirts:
        return AllListsManager.girlsPoloShirtsList;
      case AppRoutes.girlshortscargo:
        return AllListsManager.girlsShortsAndCargoList;
      case AppRoutes.girlsshirtspants:
        return AllListsManager.girlsShirtsAndPantsList;
      case AppRoutes.girlsjeans:
        return AllListsManager.girlJensList;
      case AppRoutes.girlssweaters:
        return AllListsManager.girlsSweatersList;
      case AppRoutes.girlshoodies:
        return AllListsManager.girlsHoodiesList;
      default:
        return []; // Return an empty list or a default list
    }
  }

  @override
  Widget build(BuildContext context) {
    // Use the method to get the correct list
    List currentList = getListBasedOnSelection();

    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor.withOpacity(0.5),
      drawer: CustomDrawer(controller: controller),
      body: ListView(
        children: [
          CustomAppbar(controller: controller),
          Container(
            height: Get.height * 0.2,
            width: Get.width,
            color: ColorManager.nutMegColor,
            child: Center(
              child: CustomText(
                title: getTitleBasedOnSelection(),
                fontWeight: FontWeight.bold,
                fontSize: 45,
                fontColor: ColorManager.whiteColor,
                fontFamily: HomePageText.fontFamilyNameRajdhani,
              ),
            ),
          ),
          const SizedBox(height: 50),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  horizontal: getValueForScreenType<double>(
                      context: context, mobile: 50, tablet: 100, desktop: 200)),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: getValueForScreenType<int>(
                    context: context, mobile: 1, tablet: 2, desktop: 3),
                mainAxisSpacing: getValueForScreenType<double>(
                    context: context, mobile: 20, tablet: 20, desktop: 100),
                crossAxisSpacing: getValueForScreenType<double>(
                    context: context, mobile: 20, tablet: 20, desktop: 1.sw*10.5),
                childAspectRatio: getValueForScreenType<double>(
                    context: context, mobile: 0.9, tablet: 0.8, desktop: 0.9),
              ),
              itemCount: currentList.length,
              itemBuilder: (context, index) => Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    // width: 350,
                    // height: getValueForScreenType<double>(
                    //     context: context,
                    //     mobile: 50,
                    //     tablet: 400,
                    //     desktop: 500),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: Colors.blue),
                    ),
                    child: Image.asset(
                      currentList[index],
                    ),
                  ),
                ),
              )),
          const SizedBox(height: 250),
          const Footer(),
        ],
      ),
    );
  }
}
